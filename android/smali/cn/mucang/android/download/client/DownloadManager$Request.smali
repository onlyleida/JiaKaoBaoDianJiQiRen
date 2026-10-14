.class public Lcn/mucang/android/download/client/DownloadManager$Request;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/download/client/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/download/client/DownloadManager$Request$Header;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/mucang/android/download/client/DownloadManager$Request;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/download/client/DownloadManager$Request$Header;",
            ">;"
        }
    .end annotation
.end field

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/download/client/DownloadManager$Request$a;

    invoke-direct {v0}, Lcn/mucang/android/download/client/DownloadManager$Request$a;-><init>()V

    sput-object v0, Lcn/mucang/android/download/client/DownloadManager$Request;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/download/client/DownloadManager$Request;->c:Ljava/util/List;

    const/4 v0, 0x7

    .line 9
    iput v0, p0, Lcn/mucang/android/download/client/DownloadManager$Request;->d:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/download/client/DownloadManager$Request;->a:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/download/client/DownloadManager$Request;->b:Ljava/lang/String;

    .line 12
    iget-object v0, p0, Lcn/mucang/android/download/client/DownloadManager$Request;->c:Ljava/util/List;

    sget-object v1, Lcn/mucang/android/download/client/DownloadManager$Request$Header;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/mucang/android/download/client/DownloadManager$Request;->d:I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/download/client/DownloadManager$Request;->e:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/download/client/DownloadManager$Request;->f:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/download/client/DownloadManager$Request;->g:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcn/mucang/android/download/client/DownloadManager$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/download/client/DownloadManager$Request;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/download/client/DownloadManager$Request;->c:Ljava/util/List;

    const/4 v0, 0x7

    .line 4
    iput v0, p0, Lcn/mucang/android/download/client/DownloadManager$Request;->d:I

    .line 5
    iput-object p1, p0, Lcn/mucang/android/download/client/DownloadManager$Request;->a:Ljava/lang/String;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/download/client/DownloadManager$Request;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(I)Lcn/mucang/android/download/client/DownloadManager$Request;
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/download/client/DownloadManager$Request;->d:I

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcn/mucang/android/download/client/DownloadManager$Request;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/download/client/DownloadManager$Request;->e:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)Lcn/mucang/android/download/client/DownloadManager$Request;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/download/client/DownloadManager$Request;->h:Z

    return-object p0
.end method

.method public d(Ljava/io/File;)Lcn/mucang/android/download/client/DownloadManager$Request;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/download/client/DownloadManager$Request;->g:Ljava/lang/String;

    return-object p0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(Ljava/lang/String;)Lcn/mucang/android/download/client/DownloadManager$Request;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/download/client/DownloadManager$Request;->b:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcn/mucang/android/download/client/DownloadManager$Request;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcn/mucang/android/download/client/DownloadManager$Request;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcn/mucang/android/download/client/DownloadManager$Request;->c:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 4
    iget p2, p0, Lcn/mucang/android/download/client/DownloadManager$Request;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-object p2, p0, Lcn/mucang/android/download/client/DownloadManager$Request;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcn/mucang/android/download/client/DownloadManager$Request;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcn/mucang/android/download/client/DownloadManager$Request;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
