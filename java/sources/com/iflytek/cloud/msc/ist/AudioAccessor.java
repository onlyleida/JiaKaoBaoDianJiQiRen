package com.iflytek.cloud.msc.ist;

import com.iflytek.cloud.msc.util.log.DebugLog;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public class AudioAccessor {
    private static final int MAX_BUF_LEN = 5242880;
    private static final int MIN_OUTPUT_TIME = 3000;
    private final int DATA_LENGTH_OFFSET;
    private final String FILE_FMT;
    private final int FILE_LENGTH_OFFSET;
    private final int SIZE_OF_WAVE_HEADER;
    private RandomAccessFile mAccessFile;
    private AccesserType mAccesserType;
    private File mAudioFile;
    private short mBitsPerSample;
    private int mBufLen;
    private byte[] mBuffer;
    private ByteBuffer mByteBuffer;
    private int mDataCount;
    private FileChannel mFileChannel;
    private String mFilePath;
    private Object mFileSyncObj;
    private short mFormat;
    private long mLastFlushTime;
    private short mNumChannels;
    private int mOffset;
    private int mSampleRate;

    /* JADX INFO: renamed from: com.iflytek.cloud.msc.ist.AudioAccessor$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$iflytek$cloud$msc$ist$AudioAccessor$AudioKeys;

        static {
            int[] iArr = new int[AudioKeys.values().length];
            $SwitchMap$com$iflytek$cloud$msc$ist$AudioAccessor$AudioKeys = iArr;
            try {
                iArr[AudioKeys.CHANNEL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$iflytek$cloud$msc$ist$AudioAccessor$AudioKeys[AudioKeys.FORMAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$iflytek$cloud$msc$ist$AudioAccessor$AudioKeys[AudioKeys.BIT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$iflytek$cloud$msc$ist$AudioAccessor$AudioKeys[AudioKeys.RATE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    enum AccesserType {
        WRITE_READ,
        READ_ONLY,
        BUFFER
    }

    public enum AudioKeys {
        CHANNEL,
        FORMAT,
        BIT,
        RATE
    }

    protected AudioAccessor() throws IOException {
        this.mFilePath = null;
        this.mAccesserType = AccesserType.WRITE_READ;
        this.mOffset = 0;
        this.mByteBuffer = ByteBuffer.allocate(5242880);
        this.mBuffer = new byte[5242880];
        this.mBufLen = 0;
        this.mDataCount = 0;
        this.mLastFlushTime = System.currentTimeMillis();
        this.mAudioFile = null;
        this.mAccessFile = null;
        this.mFileChannel = null;
        this.mFileSyncObj = new Object();
        this.FILE_FMT = ".wav";
        this.SIZE_OF_WAVE_HEADER = 44;
        this.DATA_LENGTH_OFFSET = 40;
        this.FILE_LENGTH_OFFSET = 4;
        this.mNumChannels = (short) 1;
        this.mFormat = (short) 1;
        this.mBitsPerSample = (short) 16;
        this.mSampleRate = 16000;
        this.mAccesserType = AccesserType.BUFFER;
    }

    public static AudioAccessor createBufferAccessor() throws IOException {
        return new AudioAccessor();
    }

    public static AudioAccessor createReadOnlyAccessor(String str) throws IOException {
        return new AudioAccessor(str);
    }

    public static AudioAccessor createWriteReadAccessor(String str, int i) throws IOException {
        return new AudioAccessor(str, i);
    }

    private long getFileLength() throws IOException {
        FileChannel fileChannel = this.mFileChannel;
        int size = fileChannel != null ? (int) fileChannel.size() : 0;
        DebugLog.LogD("getFileLength:" + size);
        return size;
    }

    private void initFile() throws IOException {
        if (AccesserType.BUFFER == this.mAccesserType) {
            return;
        }
        synchronized (this.mFileSyncObj) {
            String strConcat = this.mFilePath;
            if (strConcat == null) {
                throw new IOException("File path is null");
            }
            AccesserType accesserType = AccesserType.WRITE_READ;
            AccesserType accesserType2 = this.mAccesserType;
            if (accesserType == accesserType2) {
                int i = 0;
                File file = new File(strConcat.endsWith("/") ? strConcat.substring(0, strConcat.lastIndexOf("/")) : strConcat);
                if ((!file.isDirectory() || !file.exists()) && !file.mkdirs()) {
                    throw new IOException("create file path failed");
                }
                if (strConcat.endsWith(".wav") || strConcat.endsWith(".pcm")) {
                    File file2 = new File(strConcat);
                    this.mAudioFile = file2;
                    if (file2.exists()) {
                        throw new IOException("File is exists:" + strConcat);
                    }
                } else {
                    if (!strConcat.endsWith("/")) {
                        strConcat = strConcat.concat("/");
                    }
                    strConcat = strConcat.concat(new SimpleDateFormat("yyyyMMdd_HHmmss_SSS", Locale.CHINA).format((Date) new java.sql.Date(System.currentTimeMillis())));
                    this.mAudioFile = new File(strConcat + ".wav");
                    while (this.mAudioFile.exists()) {
                        i++;
                        this.mAudioFile = new File(strConcat + "_" + i + ".wav");
                    }
                }
                DebugLog.LogD("initFile createNewFile:" + strConcat);
                if (!this.mAudioFile.createNewFile()) {
                    throw new IOException("create new file \"" + this.mAudioFile.getAbsolutePath() + "\" failed.");
                }
                RandomAccessFile randomAccessFile = new RandomAccessFile(this.mAudioFile, "rw");
                this.mAccessFile = randomAccessFile;
                this.mFileChannel = randomAccessFile.getChannel();
                initAudioFileHeader();
            } else if (AccesserType.READ_ONLY == accesserType2) {
                File file3 = new File(this.mFilePath);
                this.mAudioFile = file3;
                if (!file3.exists()) {
                    throw new IOException("File is not exist:" + this.mFilePath);
                }
                RandomAccessFile randomAccessFile2 = new RandomAccessFile(this.mAudioFile, "rw");
                this.mAccessFile = randomAccessFile2;
                this.mFileChannel = randomAccessFile2.getChannel();
                readAudioInfo();
            }
        }
    }

    private boolean isTimeToFlush() {
        return 3000 <= System.currentTimeMillis() - this.mLastFlushTime;
    }

    private void saveAudio() throws IOException {
        DebugLog.LogS("saveAudioData enter");
        synchronized (this.mFileSyncObj) {
            if (this.mFileChannel != null) {
                DebugLog.LogS("saveAudio write audio len:" + this.mBufLen + ", file length=" + getFileLength());
                if (this.mBufLen > 0) {
                    this.mByteBuffer.clear();
                    int iCapacity = this.mByteBuffer.capacity() - this.mBufLen;
                    this.mByteBuffer.position(iCapacity);
                    this.mByteBuffer.put(this.mBuffer, 0, this.mBufLen);
                    writeBytes((int) getFileLength(), this.mByteBuffer, iCapacity);
                    this.mBufLen = 0;
                    updateAudioFileHeader();
                }
                if (AccesserType.WRITE_READ == this.mAccesserType && isTimeToFlush()) {
                    DebugLog.LogS("saveAudio flush to device.");
                    flush();
                }
            }
        }
        DebugLog.LogS("saveAudioData leave");
    }

    public void close() throws IOException {
        DebugLog.LogD("AudioAccesser close enter");
        synchronized (this.mFileSyncObj) {
            if (AccesserType.WRITE_READ == this.mAccesserType) {
                saveAudio();
            }
            if (AccesserType.BUFFER != this.mAccesserType) {
                FileChannel fileChannel = this.mFileChannel;
                if (fileChannel != null) {
                    fileChannel.force(true);
                    this.mFileChannel.close();
                    this.mFileChannel = null;
                }
                RandomAccessFile randomAccessFile = this.mAccessFile;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                    this.mAccessFile = null;
                }
            }
            this.mBuffer = null;
            this.mByteBuffer.clear();
            this.mByteBuffer = null;
        }
        DebugLog.LogD("AudioAccesser close leave");
    }

    public synchronized void flush() throws IOException {
        if (AccesserType.WRITE_READ != this.mAccesserType) {
            throw new IOException("Current type is " + this.mAccesserType);
        }
        synchronized (this.mFileSyncObj) {
            this.mFileChannel.force(true);
            this.mLastFlushTime = System.currentTimeMillis();
        }
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00ed  */
    public int getAudio(byte[] bArr) throws IOException {
        DebugLog.LogS("getAudioData enter");
        int iMin = -1;
        if (AccesserType.BUFFER == this.mAccesserType) {
            if (bArr == null || bArr.length != getBufferLength()) {
                DebugLog.LogE("getAudioData buffer is null or length is error !");
            } else {
                synchronized (this.mFileSyncObj) {
                    byte[] bArr2 = this.mBuffer;
                    if (bArr2 == null) {
                        throw new IOException("Data array is null!");
                    }
                    int i = this.mBufLen;
                    if (i > 0) {
                        System.arraycopy(bArr2, 0, bArr, 0, i);
                        int i2 = this.mBufLen;
                        this.mBufLen = 0;
                        DebugLog.LogS("getAudioData len:" + i2);
                        iMin = i2;
                    } else {
                        iMin = 0;
                    }
                }
            }
        } else if (bArr == null || bArr.length != getBufferLength()) {
            DebugLog.LogE("getAudioData buffer is null or length is not enough !");
        } else {
            synchronized (this.mFileSyncObj) {
                if (this.mFileChannel == null) {
                    throw new IOException("File is null!");
                }
                if (getFileLength() > 44) {
                    this.mByteBuffer.clear();
                    iMin = (int) Math.min(this.mByteBuffer.capacity(), getFileLength() - ((long) this.mOffset));
                    DebugLog.LogS("getAudioData buffer len:" + iMin);
                    if (iMin > 0) {
                        this.mFileChannel.position(this.mOffset);
                        if (iMin != readBytes(this.mOffset, this.mByteBuffer)) {
                            throw new IOException("Read audio length error:" + iMin);
                        }
                        this.mByteBuffer.position(0);
                        this.mByteBuffer.get(bArr, 0, iMin);
                        this.mOffset += iMin;
                        DebugLog.LogS("getAudioData read len:" + iMin);
                    } else {
                        iMin = 0;
                    }
                } else {
                    iMin = 0;
                }
            }
        }
        DebugLog.LogS("getAudioData leave");
        return iMin;
    }

    public String getAudioInfo(AudioKeys audioKeys) {
        int i = AnonymousClass1.$SwitchMap$com$iflytek$cloud$msc$ist$AudioAccessor$AudioKeys[audioKeys.ordinal()];
        if (i == 1) {
            return String.valueOf((int) this.mNumChannels);
        }
        if (i == 2) {
            return String.valueOf((int) this.mFormat);
        }
        if (i == 3) {
            return String.valueOf((int) this.mBitsPerSample);
        }
        if (i != 4) {
            return null;
        }
        return String.valueOf(this.mSampleRate);
    }

    public int getBufferLength() {
        return 5242880;
    }

    public int getCacheLeft() {
        int i;
        synchronized (this.mFileSyncObj) {
            i = 2621440 - this.mBufLen;
        }
        return i;
    }

    public long getDataLength() {
        long j;
        synchronized (this.mFileSyncObj) {
            j = this.mDataCount;
        }
        return j;
    }

    public String getFilePath() {
        String absolutePath;
        synchronized (this.mFileSyncObj) {
            File file = this.mAudioFile;
            absolutePath = file != null ? file.getAbsolutePath() : null;
        }
        return absolutePath;
    }

    protected void initAudioFileHeader() throws IOException {
        writeBytes(0, "RIFF".getBytes());
        writeInt(4, 44);
        writeBytes(8, "WAVE".getBytes());
        writeBytes(12, "fmt ".getBytes());
        writeInt(16, 16);
        writeShort(20, this.mFormat);
        writeShort(22, this.mNumChannels);
        writeInt(24, this.mSampleRate);
        short s = this.mNumChannels;
        int i = this.mSampleRate * s;
        short s2 = this.mBitsPerSample;
        int i2 = (i * s2) / 8;
        short s3 = (short) ((s * s2) / 8);
        DebugLog.LogS("writeAudioFileHeader NumChannels=" + ((int) this.mNumChannels) + "SampleRate=" + this.mSampleRate + ", transferRate=" + i2 + ", adjustValue=" + ((int) s3) + ", bit=" + ((int) this.mBitsPerSample));
        writeInt(28, i2);
        writeShort(32, s3);
        writeShort(34, this.mBitsPerSample);
        writeBytes(36, "data".getBytes());
        writeInt(40, 0);
    }

    public synchronized boolean putAudio(byte[] bArr, int i) throws IOException {
        DebugLog.LogS("putAudio enter");
        if (bArr == null) {
            DebugLog.LogE("data is null !");
            throw null;
        }
        AccesserType accesserType = AccesserType.BUFFER;
        AccesserType accesserType2 = this.mAccesserType;
        if (accesserType == accesserType2 && 5242880 < this.mBufLen + i) {
            DebugLog.LogE("Buffer is not enough ! " + this.mBufLen);
            throw new IOException("Buffer is not enough ! " + this.mBufLen);
        }
        if (AccesserType.READ_ONLY == accesserType2) {
            DebugLog.LogE("Current type is " + this.mAccesserType);
            throw new IOException("Current type is " + this.mAccesserType);
        }
        if (bArr != null && i > 0) {
            synchronized (this.mFileSyncObj) {
                DebugLog.LogS("putAudio data len=" + i);
                System.arraycopy(bArr, 0, this.mBuffer, this.mBufLen, i);
                this.mBufLen = this.mBufLen + i;
                this.mDataCount = this.mDataCount + i;
                DebugLog.LogS("putAudio buf len=" + this.mBufLen);
            }
        }
        if (AccesserType.WRITE_READ == this.mAccesserType) {
            saveAudio();
        }
        DebugLog.LogS("putAudio leave");
        return true;
    }

    protected void readAudioInfo() throws IOException {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        readBytes(0, byteBufferAllocate);
        if ("RIFF".equalsIgnoreCase(new String(byteBufferAllocate.array()))) {
            this.mFormat = readShort(20);
            this.mNumChannels = readShort(22);
            this.mSampleRate = readInt(24);
            this.mBitsPerSample = readShort(34);
        }
    }

    protected int readBytes(int i, ByteBuffer byteBuffer) throws IOException {
        this.mFileChannel.position(i);
        return this.mFileChannel.read(byteBuffer);
    }

    protected int readInt(int i) throws IOException {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        this.mFileChannel.position(i);
        this.mFileChannel.read(byteBufferAllocate);
        return (byteBufferAllocate.getInt(0) << 0) | (byteBufferAllocate.getInt(1) << 8) | (byteBufferAllocate.getInt(2) << 16) | (byteBufferAllocate.getInt(3) << 24);
    }

    protected short readShort(int i) throws IOException {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        this.mFileChannel.position(i);
        this.mFileChannel.read(byteBufferAllocate);
        return (short) ((byteBufferAllocate.getShort(0) << 0) | (byteBufferAllocate.getShort(1) << 8));
    }

    protected void updateAudioFileHeader() throws IOException {
        DebugLog.LogS("updateHeader File length:" + getDataLength() + ", mem file length:" + this.mFileChannel.size());
        writeInt(4, (int) getDataLength());
        StringBuilder sb = new StringBuilder();
        sb.append("updateHeader data length:");
        sb.append(getDataLength() - 44);
        DebugLog.LogS(sb.toString());
        writeInt(40, ((int) getDataLength()) - 44);
    }

    protected void writeBytes(int i, ByteBuffer byteBuffer) throws IOException {
        DebugLog.LogS("writeBytes buffer len=" + byteBuffer.capacity());
        byteBuffer.rewind();
        this.mFileChannel.position((long) i);
        DebugLog.LogS("writeBytes writen len=" + this.mFileChannel.write(byteBuffer));
    }

    protected void writeInt(int i, int i2) throws IOException {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        byteBufferAllocate.put(0, (byte) (i2 >> 0));
        byteBufferAllocate.put(1, (byte) (i2 >> 8));
        byteBufferAllocate.put(2, (byte) (i2 >> 16));
        byteBufferAllocate.put(3, (byte) (i2 >> 24));
        writeBytes(i, byteBufferAllocate);
    }

    protected void writeShort(int i, short s) throws IOException {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(2);
        byteBufferAllocate.put(0, (byte) (s >> 0));
        byteBufferAllocate.put(1, (byte) (s >> 8));
        writeBytes(i, byteBufferAllocate);
    }

    protected void writeBytes(int i, ByteBuffer byteBuffer, int i2) throws IOException {
        DebugLog.LogS("writeBytes buffer len=" + (byteBuffer.capacity() - i2));
        byteBuffer.position(i2);
        this.mFileChannel.position((long) i);
        DebugLog.LogS("writeBytes writen len=" + this.mFileChannel.write(byteBuffer));
    }

    protected void writeBytes(int i, byte[] bArr) throws IOException {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bArr.length);
        byteBufferAllocate.put(bArr);
        writeBytes(i, byteBufferAllocate);
    }

    protected AudioAccessor(String str) throws IOException {
        this.mFilePath = null;
        this.mAccesserType = AccesserType.WRITE_READ;
        this.mOffset = 0;
        this.mByteBuffer = ByteBuffer.allocate(5242880);
        this.mBuffer = new byte[5242880];
        this.mBufLen = 0;
        this.mDataCount = 0;
        this.mLastFlushTime = System.currentTimeMillis();
        this.mAudioFile = null;
        this.mAccessFile = null;
        this.mFileChannel = null;
        this.mFileSyncObj = new Object();
        this.FILE_FMT = ".wav";
        this.SIZE_OF_WAVE_HEADER = 44;
        this.DATA_LENGTH_OFFSET = 40;
        this.FILE_LENGTH_OFFSET = 4;
        this.mNumChannels = (short) 1;
        this.mFormat = (short) 1;
        this.mBitsPerSample = (short) 16;
        this.mSampleRate = 16000;
        this.mFilePath = str;
        this.mAccesserType = AccesserType.READ_ONLY;
        initFile();
    }

    protected AudioAccessor(String str, int i) throws IOException {
        this.mFilePath = null;
        AccesserType accesserType = AccesserType.WRITE_READ;
        this.mAccesserType = accesserType;
        this.mOffset = 0;
        this.mByteBuffer = ByteBuffer.allocate(5242880);
        this.mBuffer = new byte[5242880];
        this.mBufLen = 0;
        this.mDataCount = 0;
        this.mLastFlushTime = System.currentTimeMillis();
        this.mAudioFile = null;
        this.mAccessFile = null;
        this.mFileChannel = null;
        this.mFileSyncObj = new Object();
        this.FILE_FMT = ".wav";
        this.SIZE_OF_WAVE_HEADER = 44;
        this.DATA_LENGTH_OFFSET = 40;
        this.FILE_LENGTH_OFFSET = 4;
        this.mNumChannels = (short) 1;
        this.mFormat = (short) 1;
        this.mBitsPerSample = (short) 16;
        this.mSampleRate = 16000;
        this.mFilePath = str;
        this.mSampleRate = i;
        this.mAccesserType = accesserType;
        initFile();
    }
}
