package com.serenegiant.utils;

import android.text.TextUtils;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: loaded from: classes6.dex */
public class SysFs {
    private static final boolean DEBUG = false;
    private static final String TAG = "SysFs";
    private static final Map<String, WeakReference<ReentrantReadWriteLock>> sSysFs = new HashMap();
    protected final ReentrantReadWriteLock mLock;
    private final String mName;
    private final String mPath;
    private final Lock mReadLock;
    private final Lock mWriteLock;

    private static class MyByteArrayOutputStream extends ByteArrayOutputStream {
        public MyByteArrayOutputStream() {
        }

        public byte[] getBuffer() {
            return ((ByteArrayOutputStream) this).buf;
        }

        public ByteBuffer getByteBuffer() {
            return ByteBuffer.wrap(((ByteArrayOutputStream) this).buf, 0, size());
        }

        public MyByteArrayOutputStream(int i) {
            super(i);
        }
    }

    public SysFs(String str) throws IOException {
        ReentrantReadWriteLock reentrantReadWriteLock;
        WeakReference<ReentrantReadWriteLock> weakReference;
        File file = new File(str);
        if (!file.exists() || !file.canRead()) {
            throw new IOException(str + " does not exist or can't read.");
        }
        this.mPath = str;
        this.mName = file.getName();
        Map<String, WeakReference<ReentrantReadWriteLock>> map = sSysFs;
        synchronized (map) {
            reentrantReadWriteLock = null;
            if (map.containsKey(str) && (weakReference = map.get(str)) != null) {
                reentrantReadWriteLock = weakReference.get();
            }
            if (reentrantReadWriteLock == null) {
                reentrantReadWriteLock = new ReentrantReadWriteLock();
                map.put(str, new WeakReference<>(reentrantReadWriteLock));
            }
        }
        this.mLock = reentrantReadWriteLock;
        this.mReadLock = reentrantReadWriteLock.readLock();
        this.mWriteLock = reentrantReadWriteLock.writeLock();
    }

    protected void finalize() throws Throwable {
        try {
            release();
        } finally {
            super.finalize();
        }
    }

    public String getName() {
        return this.mName;
    }

    public String getPath() {
        return this.mPath;
    }

    public byte readByte(String str) throws IOException {
        this.mReadLock.lock();
        try {
            DataInputStream dataInputStream = new DataInputStream(new FileInputStream(getPath(str)));
            try {
                byte b = dataInputStream.readByte();
                dataInputStream.close();
                this.mReadLock.unlock();
                return b;
            } catch (Throwable th) {
                dataInputStream.close();
                throw th;
            }
        } catch (Throwable th2) {
            this.mReadLock.unlock();
            throw th2;
        }
    }

    public byte[] readBytes(String str) throws IOException {
        this.mReadLock.lock();
        try {
            byte[] bArr = new byte[512];
            MyByteArrayOutputStream myByteArrayOutputStream = new MyByteArrayOutputStream(1024);
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(getPath(str)));
            try {
                for (int iAvailable = bufferedInputStream.available(); iAvailable > 0; iAvailable = bufferedInputStream.available()) {
                    int i = bufferedInputStream.read(bArr);
                    if (i > 0) {
                        myByteArrayOutputStream.write(bArr, 0, i);
                    }
                }
                byte[] byteArray = myByteArrayOutputStream.toByteArray();
                bufferedInputStream.close();
                this.mReadLock.unlock();
                return byteArray;
            } catch (Throwable th) {
                bufferedInputStream.close();
                throw th;
            }
        } catch (Throwable th2) {
            this.mReadLock.unlock();
            throw th2;
        }
    }

    public double readDouble(String str) throws IOException {
        this.mReadLock.lock();
        try {
            DataInputStream dataInputStream = new DataInputStream(new FileInputStream(getPath(str)));
            try {
                double d2 = dataInputStream.readDouble();
                dataInputStream.close();
                this.mReadLock.unlock();
                return d2;
            } catch (Throwable th) {
                dataInputStream.close();
                throw th;
            }
        } catch (Throwable th2) {
            this.mReadLock.unlock();
            throw th2;
        }
    }

    public float readFloat(String str) throws IOException {
        this.mReadLock.lock();
        try {
            DataInputStream dataInputStream = new DataInputStream(new FileInputStream(getPath(str)));
            try {
                float f2 = dataInputStream.readFloat();
                dataInputStream.close();
                this.mReadLock.unlock();
                return f2;
            } catch (Throwable th) {
                dataInputStream.close();
                throw th;
            }
        } catch (Throwable th2) {
            this.mReadLock.unlock();
            throw th2;
        }
    }

    public int readInt(String str) throws IOException {
        this.mReadLock.lock();
        try {
            DataInputStream dataInputStream = new DataInputStream(new FileInputStream(getPath(str)));
            try {
                int i = dataInputStream.readInt();
                dataInputStream.close();
                this.mReadLock.unlock();
                return i;
            } catch (Throwable th) {
                dataInputStream.close();
                throw th;
            }
        } catch (Throwable th2) {
            this.mReadLock.unlock();
            throw th2;
        }
    }

    public long readLong(String str) throws IOException {
        this.mReadLock.lock();
        try {
            DataInputStream dataInputStream = new DataInputStream(new FileInputStream(getPath(str)));
            try {
                long j = dataInputStream.readLong();
                dataInputStream.close();
                this.mReadLock.unlock();
                return j;
            } catch (Throwable th) {
                dataInputStream.close();
                throw th;
            }
        } catch (Throwable th2) {
            this.mReadLock.unlock();
            throw th2;
        }
    }

    public short readShort(String str) throws IOException {
        this.mReadLock.lock();
        try {
            DataInputStream dataInputStream = new DataInputStream(new FileInputStream(getPath(str)));
            try {
                short s = dataInputStream.readShort();
                dataInputStream.close();
                this.mReadLock.unlock();
                return s;
            } catch (Throwable th) {
                dataInputStream.close();
                throw th;
            }
        } catch (Throwable th2) {
            this.mReadLock.unlock();
            throw th2;
        }
    }

    public String readString(String str) throws IOException {
        this.mReadLock.lock();
        try {
            FileReader fileReader = new FileReader(getPath(str));
            try {
                String line = new BufferedReader(fileReader).readLine();
                fileReader.close();
                this.mReadLock.unlock();
                return line;
            } catch (Throwable th) {
                fileReader.close();
                throw th;
            }
        } catch (Throwable th2) {
            this.mReadLock.unlock();
            throw th2;
        }
    }

    public void release() {
    }

    public String toString() {
        try {
            return String.format(Locale.US, "%s=%s", this.mPath, readString());
        } catch (IOException unused) {
            return String.format(Locale.US, "%s=null", this.mPath);
        }
    }

    public void write(String str, byte[] bArr) throws IOException {
        write(str, bArr, 0, bArr.length);
    }

    private File getPath(String str) {
        return TextUtils.isEmpty(str) ? new File(this.mPath) : new File(new File(this.mPath), str);
    }

    public void write(byte[] bArr) throws IOException {
        write(null, bArr, 0, bArr.length);
    }

    public void write(String str, byte[] bArr, int i, int i2) throws IOException {
        this.mWriteLock.lock();
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(getPath(str));
            try {
                fileOutputStream.write(bArr, i, i2);
                fileOutputStream.flush();
                fileOutputStream.close();
                this.mWriteLock.unlock();
            } catch (Throwable th) {
                fileOutputStream.close();
                throw th;
            }
        } catch (Throwable th2) {
            this.mWriteLock.unlock();
            throw th2;
        }
    }

    public byte readByte() throws IOException {
        return readByte(null);
    }

    public double readDouble() throws IOException {
        return readDouble(null);
    }

    public float readFloat() throws IOException {
        return readFloat(null);
    }

    public int readInt() throws IOException {
        return readInt(null);
    }

    public long readLong() throws IOException {
        return readLong(null);
    }

    public short readShort() throws IOException {
        return readShort(null);
    }

    public String readString() throws IOException {
        return readString(null);
    }

    public void write(byte[] bArr, int i, int i2) throws IOException {
        write(null, bArr, i, i2);
    }

    public void write(String str, String str2) throws IOException {
        this.mWriteLock.lock();
        try {
            FileWriter fileWriter = new FileWriter(getPath(str));
            try {
                fileWriter.write(str2);
                fileWriter.flush();
                fileWriter.close();
                this.mWriteLock.unlock();
            } catch (Throwable th) {
                fileWriter.close();
                throw th;
            }
        } catch (Throwable th2) {
            this.mWriteLock.unlock();
            throw th2;
        }
    }

    public byte[] readBytes() throws IOException {
        return readBytes(null);
    }

    public void write(String str) throws IOException {
        write((String) null, str);
    }

    public void write(String str, boolean z) throws IOException {
        this.mWriteLock.lock();
        try {
            DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(getPath(str)));
            try {
                dataOutputStream.writeBoolean(z);
                dataOutputStream.flush();
                dataOutputStream.close();
                this.mWriteLock.unlock();
            } catch (Throwable th) {
                dataOutputStream.close();
                throw th;
            }
        } catch (Throwable th2) {
            this.mWriteLock.unlock();
            throw th2;
        }
    }

    public void write(boolean z) throws IOException {
        write((String) null, z);
    }

    public void write(String str, byte b) throws IOException {
        this.mWriteLock.lock();
        try {
            DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(getPath(str)));
            try {
                dataOutputStream.writeByte(b);
                dataOutputStream.flush();
                dataOutputStream.close();
                this.mWriteLock.unlock();
            } catch (Throwable th) {
                dataOutputStream.close();
                throw th;
            }
        } catch (Throwable th2) {
            this.mWriteLock.unlock();
            throw th2;
        }
    }

    public void write(byte b) throws IOException {
        write((String) null, b);
    }

    public void write(String str, short s) throws IOException {
        this.mWriteLock.lock();
        try {
            DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(getPath(str)));
            try {
                dataOutputStream.writeShort(s);
                dataOutputStream.flush();
                dataOutputStream.close();
                this.mWriteLock.unlock();
            } catch (Throwable th) {
                dataOutputStream.close();
                throw th;
            }
        } catch (Throwable th2) {
            this.mWriteLock.unlock();
            throw th2;
        }
    }

    public void write(short s) throws IOException {
        write((String) null, s);
    }

    public void write(String str, int i) throws IOException {
        this.mWriteLock.lock();
        try {
            DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(getPath(str)));
            try {
                dataOutputStream.writeInt(i);
                dataOutputStream.flush();
                dataOutputStream.close();
                this.mWriteLock.unlock();
            } catch (Throwable th) {
                dataOutputStream.close();
                throw th;
            }
        } catch (Throwable th2) {
            this.mWriteLock.unlock();
            throw th2;
        }
    }

    public void write(int i) throws IOException {
        write((String) null, i);
    }

    public void write(String str, float f2) throws IOException {
        this.mWriteLock.lock();
        try {
            DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(getPath(str)));
            try {
                dataOutputStream.writeFloat(f2);
                dataOutputStream.flush();
                dataOutputStream.close();
                this.mWriteLock.unlock();
            } catch (Throwable th) {
                dataOutputStream.close();
                throw th;
            }
        } catch (Throwable th2) {
            this.mWriteLock.unlock();
            throw th2;
        }
    }

    public void write(float f2) throws IOException {
        write((String) null, f2);
    }

    public void write(String str, double d2) throws IOException {
        this.mWriteLock.lock();
        try {
            DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(getPath(str)));
            try {
                dataOutputStream.writeDouble(d2);
                dataOutputStream.flush();
                dataOutputStream.close();
                this.mWriteLock.unlock();
            } catch (Throwable th) {
                dataOutputStream.close();
                throw th;
            }
        } catch (Throwable th2) {
            this.mWriteLock.unlock();
            throw th2;
        }
    }

    public void write(double d2) throws IOException {
        write((String) null, d2);
    }
}
