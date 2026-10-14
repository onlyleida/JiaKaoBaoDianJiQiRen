package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: loaded from: classes3.dex */
@GwtCompatible(emulated = true, serializable = true)
final class RegularImmutableMap<K, V> extends ImmutableMap<K, V> {
    private static final int ABSENT = -1;
    static final ImmutableMap<Object, Object> EMPTY = new RegularImmutableMap(null, new Object[0], 0);
    private static final long serialVersionUID = 0;

    @VisibleForTesting
    final transient Object[] alternatingKeysAndValues;
    private final transient int[] hashTable;
    private final transient int size;

    static class EntrySet<K, V> extends ImmutableSet<Map.Entry<K, V>> {
        private final transient Object[] alternatingKeysAndValues;
        private final transient int keyOffset;
        private final transient ImmutableMap<K, V> map;
        private final transient int size;

        EntrySet(ImmutableMap<K, V> immutableMap, Object[] objArr, int i, int i2) {
            this.map = immutableMap;
            this.alternatingKeysAndValues = objArr;
            this.keyOffset = i;
            this.size = i2;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            return value != null && value.equals(this.map.get(key));
        }

        @Override // com.google.common.collect.ImmutableCollection
        int copyIntoArray(Object[] objArr, int i) {
            return asList().copyIntoArray(objArr, i);
        }

        @Override // com.google.common.collect.ImmutableSet
        ImmutableList<Map.Entry<K, V>> createAsList() {
            return new ImmutableList<Map.Entry<K, V>>() { // from class: com.google.common.collect.RegularImmutableMap.EntrySet.1
                @Override // com.google.common.collect.ImmutableCollection
                public boolean isPartialView() {
                    return true;
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                public int size() {
                    return EntrySet.this.size;
                }

                @Override // java.util.List
                public Map.Entry<K, V> get(int i) {
                    Preconditions.checkElementIndex(i, EntrySet.this.size);
                    int i2 = i * 2;
                    return new AbstractMap.SimpleImmutableEntry(EntrySet.this.alternatingKeysAndValues[EntrySet.this.keyOffset + i2], EntrySet.this.alternatingKeysAndValues[i2 + (EntrySet.this.keyOffset ^ 1)]);
                }
            };
        }

        @Override // com.google.common.collect.ImmutableCollection
        boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.size;
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet, com.google.common.collect.SortedIterable
        public UnmodifiableIterator<Map.Entry<K, V>> iterator() {
            return asList().iterator();
        }
    }

    static final class KeySet<K> extends ImmutableSet<K> {
        private final transient ImmutableList<K> list;
        private final transient ImmutableMap<K, ?> map;

        KeySet(ImmutableMap<K, ?> immutableMap, ImmutableList<K> immutableList) {
            this.map = immutableMap;
            this.list = immutableList;
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
        public ImmutableList<K> asList() {
            return this.list;
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@NullableDecl Object obj) {
            return this.map.get(obj) != null;
        }

        @Override // com.google.common.collect.ImmutableCollection
        int copyIntoArray(Object[] objArr, int i) {
            return asList().copyIntoArray(objArr, i);
        }

        @Override // com.google.common.collect.ImmutableCollection
        boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.map.size();
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet, com.google.common.collect.SortedIterable
        public UnmodifiableIterator<K> iterator() {
            return asList().iterator();
        }
    }

    static final class KeysOrValuesAsList extends ImmutableList<Object> {
        private final transient Object[] alternatingKeysAndValues;
        private final transient int offset;
        private final transient int size;

        KeysOrValuesAsList(Object[] objArr, int i, int i2) {
            this.alternatingKeysAndValues = objArr;
            this.offset = i;
            this.size = i2;
        }

        @Override // java.util.List
        public Object get(int i) {
            Preconditions.checkElementIndex(i, this.size);
            return this.alternatingKeysAndValues[(i * 2) + this.offset];
        }

        @Override // com.google.common.collect.ImmutableCollection
        boolean isPartialView() {
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.size;
        }
    }

    private RegularImmutableMap(int[] iArr, Object[] objArr, int i) {
        this.hashTable = iArr;
        this.alternatingKeysAndValues = objArr;
        this.size = i;
    }

    static <K, V> RegularImmutableMap<K, V> create(int i, Object[] objArr) {
        if (i == 0) {
            return (RegularImmutableMap) EMPTY;
        }
        if (i == 1) {
            CollectPreconditions.checkEntryNotNull(objArr[0], objArr[1]);
            return new RegularImmutableMap<>(null, objArr, 1);
        }
        Preconditions.checkPositionIndex(i, objArr.length >> 1);
        return new RegularImmutableMap<>(createHashTable(objArr, i, ImmutableSet.chooseTableSize(i), 0), objArr, i);
    }

    static int[] createHashTable(Object[] objArr, int i, int i2, int i3) {
        int i4;
        if (i == 1) {
            CollectPreconditions.checkEntryNotNull(objArr[i3], objArr[i3 ^ 1]);
            return null;
        }
        int i5 = i2 - 1;
        int[] iArr = new int[i2];
        Arrays.fill(iArr, -1);
        for (int i6 = 0; i6 < i; i6++) {
            int i7 = i6 * 2;
            int i8 = i7 + i3;
            Object obj = objArr[i8];
            Object obj2 = objArr[i7 + (i3 ^ 1)];
            CollectPreconditions.checkEntryNotNull(obj, obj2);
            int iSmear = Hashing.smear(obj.hashCode());
            while (true) {
                i4 = iSmear & i5;
                int i9 = iArr[i4];
                if (i9 == -1) {
                    break;
                }
                if (objArr[i9].equals(obj)) {
                    throw new IllegalArgumentException("Multiple entries with same key: " + obj + "=" + obj2 + " and " + objArr[i9] + "=" + objArr[i9 ^ 1]);
                }
                iSmear = i4 + 1;
            }
            iArr[i4] = i8;
        }
        return iArr;
    }

    @Override // com.google.common.collect.ImmutableMap
    ImmutableSet<Map.Entry<K, V>> createEntrySet() {
        return new EntrySet(this, this.alternatingKeysAndValues, 0, this.size);
    }

    @Override // com.google.common.collect.ImmutableMap
    ImmutableSet<K> createKeySet() {
        return new KeySet(this, new KeysOrValuesAsList(this.alternatingKeysAndValues, 0, this.size));
    }

    @Override // com.google.common.collect.ImmutableMap
    ImmutableCollection<V> createValues() {
        return new KeysOrValuesAsList(this.alternatingKeysAndValues, 1, this.size);
    }

    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    @NullableDecl
    public V get(@NullableDecl Object obj) {
        return (V) get(this.hashTable, this.alternatingKeysAndValues, this.size, 0, obj);
    }

    @Override // com.google.common.collect.ImmutableMap
    boolean isPartialView() {
        return false;
    }

    @Override // java.util.Map
    public int size() {
        return this.size;
    }

    static Object get(@NullableDecl int[] iArr, @NullableDecl Object[] objArr, int i, int i2, @NullableDecl Object obj) {
        if (obj == null) {
            return null;
        }
        if (i == 1) {
            if (objArr[i2].equals(obj)) {
                return objArr[i2 ^ 1];
            }
            return null;
        }
        if (iArr == null) {
            return null;
        }
        int length = iArr.length - 1;
        int iSmear = Hashing.smear(obj.hashCode());
        while (true) {
            int i3 = iSmear & length;
            int i4 = iArr[i3];
            if (i4 == -1) {
                return null;
            }
            if (objArr[i4].equals(obj)) {
                return objArr[i4 ^ 1];
            }
            iSmear = i3 + 1;
        }
    }
}
