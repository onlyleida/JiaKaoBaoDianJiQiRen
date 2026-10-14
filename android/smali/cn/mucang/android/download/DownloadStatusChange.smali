.class public Lcn/mucang/android/download/DownloadStatusChange;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/mucang/android/download/DownloadStatusChange;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:J

.field public b:I

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/download/DownloadStatusChange$a;

    invoke-direct {v0}, Lcn/mucang/android/download/DownloadStatusChange$a;-><init>()V

    sput-object v0, Lcn/mucang/android/download/DownloadStatusChange;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcn/mucang/android/download/DownloadStatusChange;->a:J

    .line 4
    iput p3, p0, Lcn/mucang/android/download/DownloadStatusChange;->b:I

    .line 5
    iput p4, p0, Lcn/mucang/android/download/DownloadStatusChange;->c:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/download/DownloadStatusChange;->a:J

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/mucang/android/download/DownloadStatusChange;->b:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/download/DownloadStatusChange;->c:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcn/mucang/android/download/DownloadStatusChange$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/download/DownloadStatusChange;-><init>(Landroid/os/Parcel;)V

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
    iget-wide v0, p0, Lcn/mucang/android/download/DownloadStatusChange;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2
    iget p2, p0, Lcn/mucang/android/download/DownloadStatusChange;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lcn/mucang/android/download/DownloadStatusChange;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
