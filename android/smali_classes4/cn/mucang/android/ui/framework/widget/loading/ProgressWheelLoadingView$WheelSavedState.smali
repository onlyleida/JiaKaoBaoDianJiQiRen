.class Lcn/mucang/android/ui/framework/widget/loading/ProgressWheelLoadingView$WheelSavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/ui/framework/widget/loading/ProgressWheelLoadingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WheelSavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcn/mucang/android/ui/framework/widget/loading/ProgressWheelLoadingView$WheelSavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:F

.field b:F

.field c:Z

.field d:F

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:Z

.field k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/ui/framework/widget/loading/ProgressWheelLoadingView$WheelSavedState$a;

    invoke-direct {v0}, Lcn/mucang/android/ui/framework/widget/loading/ProgressWheelLoadingView$WheelSavedState$a;-><init>()V

    sput-object v0, Lcn/mucang/android/ui/framework/widget/loading/ProgressWheelLoadingView$WheelSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 3
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcn/mucang/android/ui/framework/widget/loading/ProgressWheelLoadingView$WheelSavedState;->a:F

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcn/mucang/android/ui/framework/widget/loading/ProgressWheelLoadingView$WheelSavedState;->b:F

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcn/mucang/android/ui/framework/widget/loading/ProgressWheelLoadingView$WheelSavedState;->c:Z

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcn/mucang/android/ui/framework/widget/loading/ProgressWheelLoadingView$WheelSavedState;->d:F

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/mucang/android/ui/framework/widget/loading/ProgressWheelLoadingView$WheelSavedState;->e:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/mucang/android/ui/framework/widget/loading/ProgressWheelLoadingView$WheelSavedState;->f:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/mucang/android/ui/framework/widget/loading/ProgressWheelLoadingView$WheelSavedState;->g:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/mucang/android/ui/framework/widget/loading/ProgressWheelLoadingView$WheelSavedState;->h:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcn/mucang/android/ui/framework/widget/loading/ProgressWheelLoadingView$WheelSavedState;->i:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcn/mucang/android/ui/framework/widget/loading/ProgressWheelLoadingView$WheelSavedState;->j:Z

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lcn/mucang/android/ui/framework/widget/loading/ProgressWheelLoadingView$WheelSavedState;->k:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcn/mucang/android/ui/framework/widget/loading/ProgressWheelLoadingView$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/ui/framework/widget/loading/ProgressWheelLoadingView$WheelSavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget p2, p0, Lcn/mucang/android/ui/framework/widget/loading/ProgressWheelLoadingView$WheelSavedState;->a:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3
    iget p2, p0, Lcn/mucang/android/ui/framework/widget/loading/ProgressWheelLoadingView$WheelSavedState;->b:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4
    iget-boolean p2, p0, Lcn/mucang/android/ui/framework/widget/loading/ProgressWheelLoadingView$WheelSavedState;->c:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 5
    iget p2, p0, Lcn/mucang/android/ui/framework/widget/loading/ProgressWheelLoadingView$WheelSavedState;->d:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 6
    iget p2, p0, Lcn/mucang/android/ui/framework/widget/loading/ProgressWheelLoadingView$WheelSavedState;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget p2, p0, Lcn/mucang/android/ui/framework/widget/loading/ProgressWheelLoadingView$WheelSavedState;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget p2, p0, Lcn/mucang/android/ui/framework/widget/loading/ProgressWheelLoadingView$WheelSavedState;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget p2, p0, Lcn/mucang/android/ui/framework/widget/loading/ProgressWheelLoadingView$WheelSavedState;->h:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget p2, p0, Lcn/mucang/android/ui/framework/widget/loading/ProgressWheelLoadingView$WheelSavedState;->i:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget-boolean p2, p0, Lcn/mucang/android/ui/framework/widget/loading/ProgressWheelLoadingView$WheelSavedState;->j:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 12
    iget-boolean p2, p0, Lcn/mucang/android/ui/framework/widget/loading/ProgressWheelLoadingView$WheelSavedState;->k:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
