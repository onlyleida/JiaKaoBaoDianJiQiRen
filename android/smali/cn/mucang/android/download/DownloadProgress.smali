.class public Lcn/mucang/android/download/DownloadProgress;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/mucang/android/download/DownloadProgress;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:J

.field public b:J

.field public c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/download/DownloadProgress$a;

    invoke-direct {v0}, Lcn/mucang/android/download/DownloadProgress$a;-><init>()V

    sput-object v0, Lcn/mucang/android/download/DownloadProgress;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/download/DownloadProgress;->a:J

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/download/DownloadProgress;->b:J

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/download/DownloadProgress;->c:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcn/mucang/android/download/DownloadProgress$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/download/DownloadProgress;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/download/DownloadEntity;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/core/db/IdEntity;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/download/DownloadProgress;->a:J

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/download/DownloadEntity;->getContentLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/download/DownloadProgress;->b:J

    .line 5
    invoke-virtual {p1}, Lcn/mucang/android/download/DownloadEntity;->getDownloadedLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/download/DownloadProgress;->c:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/download/DownloadProgress;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2
    iget-wide v0, p0, Lcn/mucang/android/download/DownloadProgress;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3
    iget-wide v0, p0, Lcn/mucang/android/download/DownloadProgress;->c:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
