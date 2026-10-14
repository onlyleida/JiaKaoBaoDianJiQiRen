package android.serialport;

import android.util.Log;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public final class SerialPort {
    public static final String DEFAULT_SU_PATH = "/system/bin/su";
    private static final String TAG = "SerialPort";
    private static String sSuPath = "/system/bin/su";
    private FileDescriptor mFd;
    private FileInputStream mFileInputStream;
    private FileOutputStream mFileOutputStream;

    static {
        System.loadLibrary("serial_port");
    }

    public static String getSuPath() {
        return sSuPath;
    }

    public static Builder newBuilder(File file, int i) {
        return new Builder(file, i);
    }

    private native FileDescriptor open(String str, int i, int i2, int i3, int i4, int i5);

    public static void setSuPath(String str) {
        if (str == null) {
            return;
        }
        sSuPath = str;
    }

    public native void close();

    public InputStream getInputStream() {
        return this.mFileInputStream;
    }

    public OutputStream getOutputStream() {
        return this.mFileOutputStream;
    }

    public static final class Builder {
        private int baudrate;
        private int dataBits;
        private File device;
        private int flags;
        private int parity;
        private int stopBits;

        public SerialPort build() throws SecurityException, IOException {
            return new SerialPort(this.device, this.baudrate, this.dataBits, this.parity, this.stopBits, this.flags);
        }

        public Builder dataBits(int i) {
            this.dataBits = i;
            return this;
        }

        public Builder flags(int i) {
            this.flags = i;
            return this;
        }

        public Builder parity(int i) {
            this.parity = i;
            return this;
        }

        public Builder stopBits(int i) {
            this.stopBits = i;
            return this;
        }

        private Builder(File file, int i) {
            this.dataBits = 8;
            this.parity = 0;
            this.stopBits = 1;
            this.flags = 0;
            this.device = file;
            this.baudrate = i;
        }

        private Builder(String str, int i) {
            this(new File(str), i);
        }
    }

    private SerialPort(File file, int i, int i2, int i3, int i4, int i5) throws IOException, SecurityException {
        if (!file.canRead() || !file.canWrite()) {
            try {
                Process processExec = Runtime.getRuntime().exec(sSuPath);
                processExec.getOutputStream().write(("chmod 666 " + file.getAbsolutePath() + "\nexit\n").getBytes());
                if (processExec.waitFor() != 0 || !file.canRead() || !file.canWrite()) {
                    throw new SecurityException();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                throw new SecurityException();
            }
        }
        FileDescriptor fileDescriptorOpen = open(file.getAbsolutePath(), i, i2, i3, i4, i5);
        this.mFd = fileDescriptorOpen;
        if (fileDescriptorOpen == null) {
            Log.e(TAG, "native open returns null");
            throw new IOException();
        }
        this.mFileInputStream = new FileInputStream(this.mFd);
        this.mFileOutputStream = new FileOutputStream(this.mFd);
    }

    public static Builder newBuilder(String str, int i) {
        return new Builder(str, i);
    }
}
