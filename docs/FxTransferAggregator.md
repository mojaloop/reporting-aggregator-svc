# FxTransferAggregator Flow Chart

```mermaid
flowchart TD
    Start[Start] --> Check{Already running?}
    Check -->|Yes| LogRunning[Log already running]
    Check -->|No| Run[Set running & process]
    
    Run --> GetLastId[Get last processed ID]
    GetLastId --> ProcessLoop[Processing Loop]
    
    ProcessLoop --> FetchChanges[Fetch new FX changes]
    FetchChanges --> HasChanges{Changes found?}
    
    HasChanges -->|No| Wait[Wait for timeout]
    Wait --> ProcessLoop
    
    HasChanges -->|Yes| SetInitialLastId[Set initial newLastId from batch]
    SetInitialLastId --> ProcessEachChange[For each FX change]
    ProcessEachChange --> GetDetails[Get conversion details]
    GetDetails --> GetCharges[Get conversion charges]
    GetCharges --> UpdateLastId[Update newLastId with change ID]
    UpdateLastId --> Process[Process to MongoDB format]
    Process --> SaveToMongo[Build batch MongoDB operations]
    SaveToMongo --> MoreChanges{More changes?}
    MoreChanges -->|Yes| ProcessEachChange
    MoreChanges -->|No| ExecuteBatch[Execute MongoDB batch]
    ExecuteBatch --> UpdateState[Save final lastId to MongoDB]
    UpdateState --> Wait
    
    Stop[Stop] --> SetStopped[Set not running]
```

## Process Description

The FxTransferAggregator processes foreign exchange data in these simple steps:

1. **Start/Stop**:
   - Check if already running before starting
   - Safely stop when requested

2. **Track Progress**:
   - Remember the last processed FX change ID
   - Resume from that point after restarts

3. **Main Loop**:
   - Get new FX transfer changes from MySQL
   - Collect conversion details and charges
   - Update existing transaction records with FX info
   - Update progress
   - Wait before checking for more changes

4. **Data Handling**:
   - Determine if conversion is for payer or payee
   - Add conversion details to transaction records
   - Include exchange rates, charges, and fees

This aggregator enriches transaction records with foreign exchange information from MySQL, enhancing the reporting data in MongoDB with currency conversion details. The lastId is carefully tracked and updated with each record processed, ensuring no data is missed even if the process restarts.
