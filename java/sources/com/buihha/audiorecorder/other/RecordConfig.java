package com.buihha.audiorecorder.other;

import android.os.Environment;
import java.io.Serializable;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public class RecordConfig implements Serializable {
    private int channelConfig;
    private int encodingConfig;
    private RecordFormat format;
    private String recordDir;
    private int sampleRate;
    private boolean saveToFile;

    public enum RecordFormat {
        MP3(".mp3"),
        WAV(".wav"),
        PCM(".pcm");

        private String extension;

        RecordFormat(String str) {
            this.extension = str;
        }

        public String getExtension() {
            return this.extension;
        }
    }

    public RecordConfig() {
        this.format = RecordFormat.MP3;
        this.channelConfig = 16;
        this.encodingConfig = 2;
        this.sampleRate = 16000;
        this.saveToFile = true;
        this.recordDir = String.format(Locale.getDefault(), "%s/Record/", Environment.getExternalStorageDirectory().getAbsolutePath());
    }

    public static RecordConfig getDefaultConfig() {
        RecordConfig recordConfig = new RecordConfig();
        recordConfig.sampleRate = 16000;
        recordConfig.channelConfig = 16;
        recordConfig.format = RecordFormat.MP3;
        recordConfig.encodingConfig = 2;
        recordConfig.saveToFile = true;
        return recordConfig;
    }

    public int getChannelConfig() {
        return this.channelConfig;
    }

    public int getChannelCount() {
        int i = this.channelConfig;
        if (i == 16) {
            return 1;
        }
        return i == 12 ? 2 : 0;
    }

    public int getEncoding() {
        if (this.format == RecordFormat.MP3) {
            return 16;
        }
        int i = this.encodingConfig;
        if (i == 3) {
            return 8;
        }
        return i == 2 ? 16 : 0;
    }

    public int getEncodingConfig() {
        if (this.format == RecordFormat.MP3) {
            return 2;
        }
        return this.encodingConfig;
    }

    public RecordFormat getFormat() {
        return this.format;
    }

    public int getRealEncoding() {
        int i = this.encodingConfig;
        if (i == 3) {
            return 8;
        }
        return i == 2 ? 16 : 0;
    }

    public String getRecordDir() {
        return this.recordDir;
    }

    public int getSampleRate() {
        return this.sampleRate;
    }

    public boolean isSaveToFile() {
        return this.saveToFile;
    }

    public RecordConfig setChannelConfig(int i) {
        this.channelConfig = i;
        return this;
    }

    public RecordConfig setEncodingConfig(int i) {
        this.encodingConfig = i;
        return this;
    }

    public RecordConfig setFormat(RecordFormat recordFormat) {
        this.format = recordFormat;
        return this;
    }

    public void setRecordDir(String str) {
        this.recordDir = str;
    }

    public RecordConfig setSampleRate(int i) {
        this.sampleRate = i;
        return this;
    }

    public RecordConfig setSaveToFile(boolean z) {
        this.saveToFile = z;
        return this;
    }

    public String toString() {
        return String.format(Locale.getDefault(), "录制格式： %s,采样率：%sHz,位宽：%s bit,声道数：%s", this.format, Integer.valueOf(this.sampleRate), Integer.valueOf(getEncoding()), Integer.valueOf(getChannelCount()));
    }

    public RecordConfig(RecordFormat recordFormat) {
        this.format = RecordFormat.MP3;
        this.channelConfig = 16;
        this.encodingConfig = 2;
        this.sampleRate = 16000;
        this.saveToFile = true;
        this.recordDir = String.format(Locale.getDefault(), "%s/Record/", Environment.getExternalStorageDirectory().getAbsolutePath());
        this.format = recordFormat;
    }

    public RecordConfig(RecordFormat recordFormat, int i, int i2, int i3) {
        this.format = RecordFormat.MP3;
        this.channelConfig = 16;
        this.encodingConfig = 2;
        this.sampleRate = 16000;
        this.saveToFile = true;
        this.recordDir = String.format(Locale.getDefault(), "%s/Record/", Environment.getExternalStorageDirectory().getAbsolutePath());
        this.format = recordFormat;
        this.channelConfig = i;
        this.encodingConfig = i2;
        this.sampleRate = i3;
    }
}
