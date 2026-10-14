package com.google.android.datatransport.runtime.scheduling.persistence;

import com.google.android.datatransport.runtime.dagger.Binds;
import com.google.android.datatransport.runtime.dagger.Module;
import com.google.android.datatransport.runtime.dagger.Provides;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;

/* JADX INFO: loaded from: classes5.dex */
@Module
public abstract class EventStoreModule {
    @Provides
    static String dbName() {
        return "com.google.android.datatransport.events";
    }

    @Provides
    static int schemaVersion() {
        return SchemaManager.SCHEMA_VERSION;
    }

    @Provides
    static EventStoreConfig storeConfig() {
        return EventStoreConfig.DEFAULT;
    }

    @Binds
    abstract EventStore eventStore(SQLiteEventStore sQLiteEventStore);

    @Binds
    abstract SynchronizationGuard synchronizationGuard(SQLiteEventStore sQLiteEventStore);
}
