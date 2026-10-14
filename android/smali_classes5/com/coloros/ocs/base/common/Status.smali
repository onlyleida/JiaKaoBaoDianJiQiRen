.class public Lcom/coloros/ocs/base/common/Status;
.super Lcom/coloros/ocs/base/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/coloros/ocs/base/common/Status;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/coloros/ocs/base/common/d;

    invoke-direct {v0}, Lcom/coloros/ocs/base/common/d;-><init>()V

    sput-object v0, Lcom/coloros/ocs/base/common/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/coloros/ocs/base/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput p1, p0, Lcom/coloros/ocs/base/common/Status;->a:I

    .line 3
    iput p2, p0, Lcom/coloros/ocs/base/common/Status;->b:I

    .line 4
    iput-object p3, p0, Lcom/coloros/ocs/base/common/Status;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/coloros/ocs/base/common/Status;->d:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/coloros/ocs/base/common/Status;

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/coloros/ocs/base/common/Status;->a:I

    check-cast p1, Lcom/coloros/ocs/base/common/Status;

    iget v1, p1, Lcom/coloros/ocs/base/common/Status;->a:I

    if-ne v0, v1, :cond_0

    .line 3
    iget v0, p0, Lcom/coloros/ocs/base/common/Status;->b:I

    iget v1, p1, Lcom/coloros/ocs/base/common/Status;->b:I

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/coloros/ocs/base/common/Status;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/coloros/ocs/base/common/Status;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lg/b/a/a/c/c;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/coloros/ocs/base/common/Status;->d:Landroid/app/PendingIntent;

    iget-object p1, p1, Lcom/coloros/ocs/base/common/Status;->d:Landroid/app/PendingIntent;

    invoke-static {v0, p1}, Lg/b/a/a/c/c;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Lcom/coloros/ocs/base/common/Status;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/coloros/ocs/base/common/Status;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/coloros/ocs/base/common/Status;->c:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/coloros/ocs/base/common/Status;->d:Landroid/app/PendingIntent;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lg/b/a/a/c/c;->a(Ljava/lang/Object;)Lg/b/a/a/c/c$a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/coloros/ocs/base/common/Status;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/coloros/ocs/base/common/Status;->b:I

    invoke-static {v1}, Lcom/coloros/ocs/base/common/e/a;->a(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "statusCode"

    .line 3
    invoke-virtual {v0, v2, v1}, Lg/b/a/a/c/c$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lg/b/a/a/c/c$a;

    iget-object v1, p0, Lcom/coloros/ocs/base/common/Status;->d:Landroid/app/PendingIntent;

    const-string v2, "resolution"

    invoke-virtual {v0, v2, v1}, Lg/b/a/a/c/c$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lg/b/a/a/c/c$a;

    invoke-virtual {v0}, Lg/b/a/a/c/c$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 v0, 0x4f45

    .line 1
    invoke-static {p1, v0}, Lcom/coloros/ocs/base/internal/safeparcel/b;->c(Landroid/os/Parcel;I)I

    move-result v0

    .line 2
    iget v1, p0, Lcom/coloros/ocs/base/common/Status;->b:I

    const/4 v2, 0x1

    .line 3
    invoke-static {p1, v2, v1}, Lcom/coloros/ocs/base/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    .line 4
    iget v1, p0, Lcom/coloros/ocs/base/common/Status;->a:I

    const/16 v2, 0x3e8

    .line 5
    invoke-static {p1, v2, v1}, Lcom/coloros/ocs/base/internal/safeparcel/b;->b(Landroid/os/Parcel;II)V

    .line 6
    iget-object v1, p0, Lcom/coloros/ocs/base/common/Status;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    .line 7
    invoke-static {p1, v2}, Lcom/coloros/ocs/base/internal/safeparcel/b;->c(Landroid/os/Parcel;I)I

    move-result v2

    .line 8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    invoke-static {p1, v2}, Lcom/coloros/ocs/base/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/coloros/ocs/base/common/Status;->d:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    const/4 v2, 0x3

    .line 11
    invoke-static {p1, v2}, Lcom/coloros/ocs/base/internal/safeparcel/b;->c(Landroid/os/Parcel;I)I

    move-result v2

    .line 12
    invoke-interface {v1, p1, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 13
    invoke-static {p1, v2}, Lcom/coloros/ocs/base/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V

    .line 14
    :cond_1
    invoke-static {p1, v0}, Lcom/coloros/ocs/base/internal/safeparcel/b;->a(Landroid/os/Parcel;I)V

    return-void
.end method
