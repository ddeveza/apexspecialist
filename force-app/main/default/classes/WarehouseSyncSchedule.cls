global with sharing class WarehouseSyncSchedule implements Schedulable {
    global void execute(SchedulableContext sc) {
        // Call the WarehouseCalloutService to sync equipment
        System.enqueueJob(new WarehouseCalloutService());
    }
}