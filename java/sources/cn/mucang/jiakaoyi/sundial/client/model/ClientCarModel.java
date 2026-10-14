package cn.mucang.jiakaoyi.sundial.client.model;

import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable;
import cn.mucang.sundial.android.model.CarModel;
import cn.mucang.sundial.android.model.KeyState;

/* JADX INFO: loaded from: classes5.dex */
public class ClientCarModel implements Parcelable {
    public static final Parcelable.Creator<ClientCarModel> CREATOR = new Parcelable.Creator<ClientCarModel>() { // from class: cn.mucang.jiakaoyi.sundial.client.model.ClientCarModel.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ClientCarModel createFromParcel(Parcel parcel) {
            return new ClientCarModel(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ClientCarModel[] newArray(int i) {
            return new ClientCarModel[i];
        }
    };
    public float currentDistance;
    public float gpsSpeed;
    public int keyState;
    public Location location;
    public int rpm;
    public float speed;
    public float totalDistance;
    public int wheelDegree;

    public ClientCarModel() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public void toServiceCarModel(CarModel carModel) {
        carModel.rpm = this.rpm;
        carModel.speed = this.speed;
        carModel.gpsSpeed = this.gpsSpeed;
        carModel.keyState = KeyState.parse(this.keyState);
        carModel.totalDistance = this.totalDistance / 1000.0f;
        carModel.currentDistance = this.currentDistance / 1000.0f;
        carModel.wheelDegree = this.wheelDegree;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.rpm);
        parcel.writeFloat(this.speed);
        parcel.writeFloat(this.gpsSpeed);
        parcel.writeInt(this.keyState);
        parcel.writeFloat(this.totalDistance);
        parcel.writeFloat(this.currentDistance);
        parcel.writeInt(this.wheelDegree);
        parcel.writeParcelable(this.location, i);
    }

    public ClientCarModel(Parcel parcel) {
        this.rpm = parcel.readInt();
        this.speed = parcel.readFloat();
        this.gpsSpeed = parcel.readFloat();
        this.keyState = parcel.readInt();
        this.totalDistance = parcel.readFloat();
        this.currentDistance = parcel.readFloat();
        this.wheelDegree = parcel.readInt();
        this.location = (Location) parcel.readParcelable(Location.class.getClassLoader());
    }
}
