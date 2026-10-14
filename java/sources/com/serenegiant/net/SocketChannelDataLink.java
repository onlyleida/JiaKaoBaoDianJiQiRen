package com.serenegiant.net;

import android.annotation.SuppressLint;
import android.util.Log;
import com.serenegiant.utils.BuildCheck;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.UnknownHostException;
import java.nio.channels.ByteChannel;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;

/* JADX INFO: loaded from: classes6.dex */
public class SocketChannelDataLink extends AbstractChannelDataLink {
    private static final boolean DEBUG = false;
    public static final int DEFAULT_SERVER_PORT = 6000;
    private static final String TAG = "SocketChannelDataLink";
    private ServerTask mServerTask;

    private class ServerTask implements Runnable {
        private volatile boolean mIsRunning;
        private final int mPort;
        private ServerSocketChannel mServerChannel;

        public ServerTask(int i) {
            this.mPort = i;
        }

        @SuppressLint({"NewApi"})
        private synchronized void init() throws IOException {
            InetSocketAddress inetSocketAddress = new InetSocketAddress(NetworkHelper.getLocalIPv4Address(), this.mPort);
            this.mServerChannel = ServerSocketChannel.open();
            if (BuildCheck.isNougat()) {
                this.mServerChannel.bind((SocketAddress) inetSocketAddress);
            } else {
                this.mServerChannel.socket().bind(inetSocketAddress);
            }
            this.mIsRunning = true;
        }

        private void serverLoop() {
            while (this.mIsRunning) {
                try {
                    SocketChannelDataLink.this.add(new Client(SocketChannelDataLink.this, this.mServerChannel.accept()));
                } catch (IOException unused) {
                    return;
                }
            }
        }

        public synchronized void release() {
            this.mIsRunning = false;
            ServerSocketChannel serverSocketChannel = this.mServerChannel;
            if (serverSocketChannel != null) {
                try {
                    serverSocketChannel.close();
                } catch (IOException unused) {
                }
                this.mServerChannel = null;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                init();
                while (this.mIsRunning) {
                    serverLoop();
                }
            } catch (Exception e2) {
                Log.w(SocketChannelDataLink.TAG, e2);
            } finally {
                release();
            }
        }
    }

    public SocketChannelDataLink() {
    }

    public Client connectTo(String str) throws IOException {
        return connectTo(str, DEFAULT_SERVER_PORT);
    }

    public synchronized boolean isRunning() {
        return this.mServerTask != null;
    }

    @Override // com.serenegiant.net.AbstractChannelDataLink
    public void release() {
        stop();
        super.release();
    }

    public void start() throws IllegalStateException {
        start(DEFAULT_SERVER_PORT, null);
    }

    public synchronized void stop() {
        ServerTask serverTask = this.mServerTask;
        if (serverTask != null) {
            serverTask.release();
            this.mServerTask = null;
        }
    }

    public static class Client extends AbstractChannelDataLink.AbstractClient {
        private String mAddr;
        private int mPort;

        public Client(SocketChannelDataLink socketChannelDataLink, ByteChannel byteChannel) {
            super(socketChannelDataLink, byteChannel);
            internalStart();
        }

        public synchronized String getAddress() {
            InetAddress inetAddress;
            ByteChannel byteChannel = this.mChannel;
            Socket socket = byteChannel instanceof SocketChannel ? ((SocketChannel) byteChannel).socket() : null;
            inetAddress = socket != null ? socket.getInetAddress() : null;
            return inetAddress != null ? inetAddress.getHostAddress() : null;
        }

        public synchronized int getPort() {
            Socket socket;
            ByteChannel byteChannel = this.mChannel;
            socket = byteChannel instanceof SocketChannel ? ((SocketChannel) byteChannel).socket() : null;
            return socket != null ? socket.getPort() : 0;
        }

        @Override // com.serenegiant.net.AbstractChannelDataLink.AbstractClient
        protected synchronized void init() throws IOException {
            try {
                if (this.mChannel == null) {
                    this.mChannel = SocketChannel.open(new InetSocketAddress(this.mAddr, this.mPort));
                }
                setInit(true);
                notifyAll();
            } catch (Throwable th) {
                notifyAll();
                throw th;
            }
        }

        public synchronized boolean isConnected() {
            ByteChannel byteChannel;
            byteChannel = this.mChannel;
            return (byteChannel instanceof SocketChannel) && ((SocketChannel) byteChannel).isConnected();
        }

        public Client(SocketChannelDataLink socketChannelDataLink, String str, int i) {
            super(socketChannelDataLink, null);
            this.mAddr = str;
            this.mPort = i;
            internalStart();
        }
    }

    public SocketChannelDataLink(AbstractChannelDataLink.Callback callback) {
        super(callback);
    }

    public Client connectTo(String str, int i) throws IOException {
        try {
            InetAddress.getByName(str);
            Client client = new Client(this, str, i);
            add(client);
            return client;
        } catch (UnknownHostException e2) {
            throw new IOException(e2.getMessage());
        }
    }

    public void start(AbstractChannelDataLink.Callback callback) throws IllegalStateException {
        start(DEFAULT_SERVER_PORT, callback);
    }

    public synchronized void start(int i, AbstractChannelDataLink.Callback callback) throws IllegalStateException {
        add(callback);
        if (this.mServerTask == null) {
            this.mServerTask = new ServerTask(i);
            new Thread(this.mServerTask).start();
        } else {
            Log.d(TAG, "already started");
        }
    }
}
