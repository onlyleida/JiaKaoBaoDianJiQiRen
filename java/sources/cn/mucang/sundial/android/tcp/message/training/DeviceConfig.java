package cn.mucang.sundial.android.tcp.message.training;

import cn.mucang.android.core.db.IdEntity;
import cn.mucang.sundial.android.tcp.decoder.BytesDecoder;
import cn.mucang.sundial.android.tcp.encoder.BytesEncoder;
import cn.mucang.sundial.android.tcp.message.Send;

/* JADX INFO: loaded from: classes5.dex */
public class DeviceConfig extends IdEntity implements Send {
    private int accOffCoachAutoLogoutDelay;
    private int accOffGnssUploadInterval;
    private int accOffStopDelay;
    private int authenticationInterval;
    private int coachCrossSchool;
    private int photoUploadMode;
    private int respondSameMessageInterval;
    private int speakExtraInfo;
    private int studentCrossSchool;
    private int takePhotoInterval;

    public static DeviceConfig from(BytesDecoder bytesDecoder) {
        DeviceConfig deviceConfig = new DeviceConfig();
        deviceConfig.takePhotoInterval = bytesDecoder.readBYTE();
        deviceConfig.photoUploadMode = bytesDecoder.readBYTE();
        deviceConfig.speakExtraInfo = bytesDecoder.readBYTE();
        deviceConfig.accOffStopDelay = bytesDecoder.readBYTE();
        deviceConfig.accOffGnssUploadInterval = bytesDecoder.readWORD();
        deviceConfig.accOffCoachAutoLogoutDelay = bytesDecoder.readWORD();
        deviceConfig.authenticationInterval = bytesDecoder.readWORD();
        deviceConfig.coachCrossSchool = bytesDecoder.readBYTE();
        deviceConfig.studentCrossSchool = bytesDecoder.readBYTE();
        deviceConfig.respondSameMessageInterval = bytesDecoder.readWORD();
        return deviceConfig;
    }

    @Override // cn.mucang.sundial.android.tcp.message.Send
    public byte[] encode() {
        BytesEncoder bytesEncoder = new BytesEncoder();
        bytesEncoder.appendBYTE(this.takePhotoInterval);
        bytesEncoder.appendBYTE(this.photoUploadMode);
        bytesEncoder.appendBYTE(this.speakExtraInfo);
        bytesEncoder.appendBYTE(this.accOffStopDelay);
        bytesEncoder.appendWORD(this.accOffGnssUploadInterval);
        bytesEncoder.appendWORD(this.accOffCoachAutoLogoutDelay);
        bytesEncoder.appendWORD(this.authenticationInterval);
        bytesEncoder.appendBYTE(this.coachCrossSchool);
        bytesEncoder.appendBYTE(this.studentCrossSchool);
        bytesEncoder.appendWORD(this.respondSameMessageInterval);
        return bytesEncoder.toByteArray();
    }

    public int getAccOffCoachAutoLogoutDelay() {
        return this.accOffCoachAutoLogoutDelay;
    }

    public int getAccOffGnssUploadInterval() {
        return this.accOffGnssUploadInterval;
    }

    public int getAccOffStopDelay() {
        return this.accOffStopDelay;
    }

    public int getAuthenticationInterval() {
        return this.authenticationInterval;
    }

    public int getCoachCrossSchool() {
        return this.coachCrossSchool;
    }

    public int getPhotoUploadMode() {
        return this.photoUploadMode;
    }

    public int getRespondSameMessageInterval() {
        return this.respondSameMessageInterval;
    }

    public int getSpeakExtraInfo() {
        return this.speakExtraInfo;
    }

    public int getStudentCrossSchool() {
        return this.studentCrossSchool;
    }

    public int getTakePhotoInterval() {
        return this.takePhotoInterval;
    }

    public void setAccOffCoachAutoLogoutDelay(int i) {
        this.accOffCoachAutoLogoutDelay = i;
    }

    public void setAccOffGnssUploadInterval(int i) {
        this.accOffGnssUploadInterval = i;
    }

    public void setAccOffStopDelay(int i) {
        this.accOffStopDelay = i;
    }

    public void setAuthenticationInterval(int i) {
        this.authenticationInterval = i;
    }

    public void setCoachCrossSchool(int i) {
        this.coachCrossSchool = i;
    }

    public void setPhotoUploadMode(int i) {
        this.photoUploadMode = i;
    }

    public void setRespondSameMessageInterval(int i) {
        this.respondSameMessageInterval = i;
    }

    public void setSpeakExtraInfo(int i) {
        this.speakExtraInfo = i;
    }

    public void setStudentCrossSchool(int i) {
        this.studentCrossSchool = i;
    }

    public void setTakePhotoInterval(int i) {
        this.takePhotoInterval = i;
    }

    public static DeviceConfig from(BytesDecoder bytesDecoder, int i) {
        if (i == 0) {
            return from(bytesDecoder);
        }
        DeviceConfig deviceConfig = new DeviceConfig();
        if (i == 1) {
            deviceConfig.takePhotoInterval = bytesDecoder.readBYTE();
        }
        if (i == 2) {
            deviceConfig.photoUploadMode = bytesDecoder.readBYTE();
        }
        if (i == 3) {
            deviceConfig.speakExtraInfo = bytesDecoder.readBYTE();
        }
        if (i == 4) {
            deviceConfig.accOffStopDelay = bytesDecoder.readBYTE();
        }
        if (i == 5) {
            deviceConfig.accOffGnssUploadInterval = bytesDecoder.readWORD();
        }
        if (i == 6) {
            deviceConfig.accOffCoachAutoLogoutDelay = bytesDecoder.readWORD();
        }
        if (i == 7) {
            deviceConfig.authenticationInterval = bytesDecoder.readWORD();
        }
        return deviceConfig;
    }
}
