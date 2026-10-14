.class public final Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/y;
.super Landroidx/lifecycle/j0;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cJ\u0010\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001cH\u0002J\u000e\u0010\u001f\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cJ\u0010\u0010 \u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001cH\u0002J\u0010\u0010!\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001cH\u0002R\u001d\u0010\u0003\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001d\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0008R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001d\u0010\u0016\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00170\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0008\u00a8\u0006\""
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/SignalCheckViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "()V",
        "baseList",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/model/SignalBaseItem;",
        "getBaseList",
        "()Landroidx/lifecycle/MutableLiveData;",
        "extendList",
        "",
        "getExtendList",
        "format",
        "Ljava/text/SimpleDateFormat;",
        "getFormat",
        "()Ljava/text/SimpleDateFormat;",
        "gpsSpeed",
        "Lcn/mucang/android/jiakaoyi/signal/handle/gps/GpsSpeed;",
        "getGpsSpeed",
        "()Lcn/mucang/android/jiakaoyi/signal/handle/gps/GpsSpeed;",
        "setGpsSpeed",
        "(Lcn/mucang/android/jiakaoyi/signal/handle/gps/GpsSpeed;)V",
        "standardList",
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/model/SignalStandardItem;",
        "getStandardList",
        "initData",
        "",
        "signalGetter",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "updateBaseList",
        "signalModel",
        "updateData",
        "updateExtendList",
        "updateStandardList",
        "uilib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Landroidx/lifecycle/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/z<",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Landroidx/lifecycle/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/z<",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Landroidx/lifecycle/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/z<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Lcn/mucang/android/jiakaoyi/signal/handle/gps/h;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/j0;-><init>()V

    .line 2
    new-instance v0, Landroidx/lifecycle/z;

    invoke-direct {v0}, Landroidx/lifecycle/z;-><init>()V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/y;->a:Landroidx/lifecycle/z;

    .line 3
    new-instance v0, Landroidx/lifecycle/z;

    invoke-direct {v0}, Landroidx/lifecycle/z;-><init>()V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/y;->b:Landroidx/lifecycle/z;

    .line 4
    new-instance v0, Landroidx/lifecycle/z;

    invoke-direct {v0}, Landroidx/lifecycle/z;-><init>()V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/y;->c:Landroidx/lifecycle/z;

    .line 5
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "HHmmssSSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method private final e(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 13

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/d/i;->a()Z

    move-result v1

    const-string v2, "%.2f"

    const-string v3, "\u901f\u5ea6\uff1a"

    const/16 v4, 0x29

    const/16 v5, 0x28

    const-string v6, "java.lang.String.format(format, *args)"

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/y;->d:Lcn/mucang/android/jiakaoyi/signal/handle/gps/h;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/handle/gps/h;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/h;-><init>()V

    iput-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/y;->d:Lcn/mucang/android/jiakaoyi/signal/handle/gps/h;

    .line 5
    :cond_0
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/y;->d:Lcn/mucang/android/jiakaoyi/signal/handle/gps/h;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/h;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;)F

    move-result v1

    .line 6
    :goto_0
    new-instance v9, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    new-array v1, v8, [Ljava/lang/Object;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v11

    iget v11, v11, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v1, v7

    invoke-static {v1, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v3, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7
    :cond_2
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v10

    iget v10, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v10, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    new-array v10, v8, [Ljava/lang/Object;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v11

    iget v11, v11, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {v10, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    invoke-static {v2, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :goto_1
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u8f6c\u901f\uff1a"

    invoke-direct {v1, v3, v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const-string v3, "-"

    if-nez v2, :cond_3

    :goto_2
    move-object v2, v3

    goto :goto_3

    :cond_3
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    :goto_3
    const-string v9, "\u6321\u4f4d\uff1a"

    invoke-direct {v1, v9, v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-wide v9, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v9, "\u65f6\u95f4\uff1a"

    invoke-direct {v1, v9, v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    const-string v2, ""

    if-nez v1, :cond_5

    :goto_4
    move-object v1, v2

    goto :goto_5

    .line 12
    :cond_5
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->safeBoardBrakeState:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    goto :goto_4

    .line 13
    :cond_7
    :goto_5
    new-instance v9, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;

    const-string v10, "\u5239\u8f66\u72b6\u6001\uff1a"

    invoke-direct {v9, v10, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->u:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const-string v9, "\u5916\u7f6e\u6321\u4f4d\uff1a"

    if-nez v1, :cond_8

    .line 15
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;

    const-string v3, "\u672a\u53d6\u5230"

    invoke-direct {v1, v9, v3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 16
    :cond_8
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v11

    iget-object v11, v11, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->u:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-nez v11, :cond_9

    goto :goto_6

    :cond_9
    iget-object v11, v11, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    if-nez v11, :cond_a

    goto :goto_6

    :cond_a
    move-object v3, v11

    :goto_6
    invoke-direct {v1, v9, v3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    :goto_7
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v3

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->i:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v9, "\u536b\u661f\u6570\uff1a"

    invoke-direct {v1, v9, v3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getBearing()F

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    const-string v9, "GPS\u89d2\u5ea6\uff1a"

    invoke-direct {v1, v9, v3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;

    .line 20
    sget-object v3, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    new-array v3, v8, [Ljava/lang/Object;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v9

    iget-object v9, v9, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v3, v7

    invoke-static {v3, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v9, "%.8f"

    invoke-static {v9, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "\u7eac\u5ea6\uff1a"

    .line 21
    invoke-direct {v1, v11, v3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;

    new-array v3, v8, [Ljava/lang/Object;

    .line 24
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v11

    iget-object v11, v11, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    invoke-virtual {v11}, Landroid/location/Location;->getLongitude()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    aput-object v11, v3, v7

    invoke-static {v3, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v9, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "\u7ecf\u5ea6\uff1a"

    .line 25
    invoke-direct {v1, v11, v3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;

    .line 28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v11

    iget v11, v11, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v11, 0x2d

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v11

    iget v11, v11, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->b:I

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-array v5, v8, [Ljava/lang/Object;

    .line 29
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v11

    iget v11, v11, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->j:F

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v5, v7

    invoke-static {v5, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    const-string v11, "%.3f"

    invoke-static {v11, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GPS\u7c7b\u578b\uff1a"

    .line 31
    invoke-direct {v1, v4, v3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->q:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u65b9\u5411\u76d81\uff1a"

    invoke-direct {v1, v4, v3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a:Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;

    const-class v3, Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcn/mucang/android/jiakaoyi/framework/dataprovider/b;->a(Ljava/lang/Class;Landroid/os/Bundle;)Lcn/mucang/android/jiakaoyi/framework/dataprovider/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;

    if-eqz v1, :cond_c

    .line 35
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/AbsSignalProvider;->useNonOldProtocol()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    const/4 v1, 0x1

    goto :goto_8

    :cond_c
    const/4 v1, 0x0

    :goto_8
    if-nez v1, :cond_d

    .line 36
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->b()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->c()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 37
    :cond_d
    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v4

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u65b9\u5411\u76d82\uff1a"

    invoke-direct {v3, v5, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_e
    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v4

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u9640\u87ba\u4eea\uff1a"

    invoke-direct {v3, v5, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v4

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->i:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u6cb9\u95e8\uff1a"

    invoke-direct {v3, v5, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_18

    .line 40
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->H:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u811a\u5239\u884c\u7a0b\uff1a"

    invoke-direct {v1, v4, v3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->I:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u79bb\u5408\u884c\u7a0b\uff1a"

    invoke-direct {v1, v4, v3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;

    .line 43
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    if-nez v3, :cond_f

    :goto_9
    move-object v3, v2

    goto :goto_a

    :cond_f
    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->safeBoardBrakeState:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    if-nez v3, :cond_10

    goto :goto_9

    :cond_10
    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_11

    goto :goto_9

    .line 44
    :cond_11
    :goto_a
    invoke-direct {v1, v10, v3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;

    .line 47
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    if-nez v3, :cond_12

    :goto_b
    move-object v3, v2

    goto :goto_c

    :cond_12
    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->safeModuleClutchState:Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;

    if-nez v3, :cond_13

    goto :goto_b

    :cond_13
    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarClutchState;->state:Ljava/lang/String;

    if-nez v3, :cond_14

    goto :goto_b

    :cond_14
    :goto_c
    const-string v4, "\u79bb\u5408\u72b6\u6001\uff1a"

    .line 48
    invoke-direct {v1, v4, v3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    if-nez v3, :cond_15

    goto :goto_d

    :cond_15
    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->throttleState:Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;

    if-nez v3, :cond_16

    goto :goto_d

    :cond_16
    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarThrottleState;->state:Ljava/lang/String;

    if-nez v3, :cond_17

    goto :goto_d

    :cond_17
    move-object v2, v3

    :goto_d
    const-string v3, "\u6cb9\u95e8\u72b6\u6001\uff1a"

    invoke-direct {v1, v3, v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_18
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->a()Lcn/mucang/android/jiakaoyi/framework/utils/b0;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->b()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 52
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;

    .line 53
    sget-object v2, Lcn/mucang/jiakaoyi/uilib/rtmc/e;->b:Ljava/lang/String;

    const-string v3, "name"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "\u57fa\u7ad9\uff1a"

    .line 54
    invoke-direct {v1, v3, v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;

    new-array v2, v8, [Ljava/lang/Object;

    .line 57
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v3

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->d:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v2, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v11, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "\u8ddd\u79bb\uff1a"

    .line 58
    invoke-direct {v1, v3, v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/s/j;->d()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 61
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;

    new-array v3, v8, [Ljava/lang/Object;

    iget-wide v4, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->originLongitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v3, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v9, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "\u539f\u7ecf\uff1a"

    invoke-direct {v2, v4, v3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;

    new-array v3, v8, [Ljava/lang/Object;

    iget-wide v4, v1, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->originLatitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-static {v3, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v9, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "\u539f\u7eac\uff1a"

    invoke-direct {v2, v3, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_19
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->l()Z

    move-result v1

    if-nez v1, :cond_1a

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->b()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 64
    :cond_1a
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->K:F

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    const-string v2, "\u6c14\u538b\uff1a"

    invoke-direct {v1, v2, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_1b
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/b/c;->a()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 66
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/b/c;->c()Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v1, "\u53ef\u7528"

    goto :goto_e

    :cond_1c
    const-string v1, "\u4e0d\u53ef\u7528"

    :goto_e
    const-string v2, "\u5012\u8f66\u706f\u72b6\u6001\uff1a"

    invoke-direct {p1, v2, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_1d
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/JNet;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u7f51\u7edc:"

    invoke-direct {p1, v2, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/y;->a:Landroidx/lifecycle/z;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    return-void
.end method

.method private final g(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/y;->c:Landroidx/lifecycle/z;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/x;->e(Lcn/mucang/android/jiakaoyi/signal/c/e;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    return-void
.end method

.method private final h(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 6

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-boolean v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u8f66\u95e8-\u5173\u95ed"

    invoke-direct {v1, v2, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u8f66\u95e8-\u6253\u5f00"

    invoke-direct {v1, v3, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :goto_0
    iget-boolean v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->d:Z

    if-eqz v1, :cond_1

    .line 7
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u5b89\u5168\u5e26-\u63d2\u4e0a"

    invoke-direct {v1, v2, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_1
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u5b89\u5168\u5e26-\u62d4\u51fa"

    invoke-direct {v1, v3, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :goto_1
    iget-boolean v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    if-eqz v1, :cond_2

    .line 10
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u624b\u5239-\u653e\u4e0b"

    invoke-direct {v1, v2, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 11
    :cond_2
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u624b\u5239-\u62c9\u8d77"

    invoke-direct {v1, v3, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :goto_2
    iget-boolean v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->g:Z

    if-eqz v1, :cond_3

    .line 13
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u811a\u5239-\u8e29\u4e0b"

    invoke-direct {v1, v2, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 14
    :cond_3
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u811a\u5239-\u677e\u5f00"

    invoke-direct {v1, v3, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    :goto_3
    iget-boolean v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->e:Z

    if-eqz v1, :cond_4

    .line 16
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u79bb\u5408-\u8e29\u4e0b"

    invoke-direct {v1, v2, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 17
    :cond_4
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u79bb\u5408-\u677e\u5f00"

    invoke-direct {v1, v3, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    :goto_4
    iget-boolean v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->k:Z

    if-eqz v1, :cond_5

    .line 19
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u7a7a\u6321\u4f20\u611f\u5668-\u662f"

    invoke-direct {v1, v2, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 20
    :cond_5
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u7a7a\u6321\u4f20\u611f\u5668-\u5426"

    invoke-direct {v1, v3, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    :goto_5
    iget-boolean v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->l:Z

    if-eqz v1, :cond_6

    .line 22
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u5587\u53ed-\u5f00\u542f"

    invoke-direct {v1, v2, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 23
    :cond_6
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u5587\u53ed-\u5173\u95ed"

    invoke-direct {v1, v3, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    :goto_6
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->NearLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p1, v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 25
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u8fd1\u5149\u706f-\u6253\u5f00"

    invoke-direct {v1, v2, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 26
    :cond_7
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u8fd1\u5149\u706f-\u5173\u95ed"

    invoke-direct {v1, v3, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    :goto_7
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FarLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p1, v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 28
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u8fdc\u5149\u706f-\u6253\u5f00"

    invoke-direct {v1, v2, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 29
    :cond_8
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u8fdc\u5149\u706f-\u5173\u95ed"

    invoke-direct {v1, v3, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    :goto_8
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->WarningLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p1, v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 31
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u5e94\u6025\u706f-\u6253\u5f00"

    invoke-direct {v1, v2, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 32
    :cond_9
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u5e94\u6025\u706f-\u5173\u95ed"

    invoke-direct {v1, v3, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    :goto_9
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->RearFogLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p1, v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 34
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u540e\u96fe\u706f-\u6253\u5f00"

    invoke-direct {v1, v2, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 35
    :cond_a
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u540e\u96fe\u706f-\u5173\u95ed"

    invoke-direct {v1, v3, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    :goto_a
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FrontFogLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p1, v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 37
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u524d\u96fe\u706f-\u6253\u5f00"

    invoke-direct {v1, v2, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 38
    :cond_b
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u524d\u96fe\u706f-\u5173\u95ed"

    invoke-direct {v1, v3, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    :goto_b
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->WidthLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p1, v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 40
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u793a\u5bbd\u706f-\u6253\u5f00"

    invoke-direct {v1, v2, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 41
    :cond_c
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u793a\u5bbd\u706f-\u5173\u95ed"

    invoke-direct {v1, v3, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    :goto_c
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p1, v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 43
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u5de6\u8f6c\u706f-\u6253\u5f00"

    invoke-direct {v1, v2, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 44
    :cond_d
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u5de6\u8f6c\u706f-\u5173\u95ed"

    invoke-direct {v1, v3, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    :goto_d
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p1, v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 46
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u53f3\u8f6c\u706f-\u6253\u5f00"

    invoke-direct {v1, v2, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 47
    :cond_e
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u53f3\u8f6c\u706f-\u5173\u95ed"

    invoke-direct {v1, v3, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    :goto_e
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->ReturnLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p1, v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 49
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u5012\u8f66\u706f-\u6253\u5f00"

    invoke-direct {v1, v2, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 50
    :cond_f
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u5012\u8f66\u706f-\u5173\u95ed"

    invoke-direct {v1, v3, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    :goto_f
    iget-boolean v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h:Z

    if-eqz v1, :cond_10

    .line 52
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u53d1\u52a8\u673a-\u6253\u5f00"

    invoke-direct {v1, v2, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 53
    :cond_10
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u53d1\u52a8\u673a-\u5173\u95ed"

    invoke-direct {v1, v3, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    :goto_10
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    .line 55
    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->p:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->ON:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    if-eq v4, v5, :cond_11

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->Start:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    if-ne v4, v5, :cond_12

    .line 56
    :cond_11
    invoke-virtual {v1, v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;->c(Z)V

    .line 57
    :cond_12
    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->p:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->desc:Ljava/lang/String;

    const-string v5, "\u94a5\u5319-"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;->d(Ljava/lang/String;)V

    .line 58
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->y:I

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;->LeftFront:Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;->id:I

    invoke-static {v1, v4}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->d(II)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 60
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u524d\u5de6-\u6253\u5f00"

    invoke-direct {v1, v2, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 61
    :cond_13
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u524d\u5de6-\u5173\u95ed"

    invoke-direct {v1, v3, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    :goto_11
    iget v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->y:I

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;->RightFront:Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;->id:I

    invoke-static {v1, v4}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->d(II)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 63
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u524d\u53f3-\u6253\u5f00"

    invoke-direct {v1, v2, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 64
    :cond_14
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u524d\u53f3-\u5173\u95ed"

    invoke-direct {v1, v3, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    :goto_12
    iget v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->y:I

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;->LeftBack:Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;->id:I

    invoke-static {v1, v4}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->d(II)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 66
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u540e\u5de6-\u6253\u5f00"

    invoke-direct {v1, v2, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 67
    :cond_15
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u540e\u5de6-\u5173\u95ed"

    invoke-direct {v1, v3, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :goto_13
    iget v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->y:I

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;->RightBack:Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;->id:I

    invoke-static {v1, v4}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->d(II)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 69
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u540e\u53f3-\u6253\u5f00"

    invoke-direct {v1, v2, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 70
    :cond_16
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u540e\u53f3-\u5173\u95ed"

    invoke-direct {v1, v3, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :goto_14
    iget-boolean v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->s:Z

    if-eqz v1, :cond_17

    .line 72
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u6307\u7eb9-\u6253\u5f00"

    invoke-direct {v1, v2, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 73
    :cond_17
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u6307\u7eb9-\u5173\u95ed"

    invoke-direct {v1, v3, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :goto_15
    iget v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->z:I

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->Seat:Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->id:I

    invoke-static {v1, v4}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->d(II)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 75
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u5ea7\u6905-\u6253\u5f00"

    invoke-direct {v1, v2, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 76
    :cond_18
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u5ea7\u6905-\u5173\u95ed"

    invoke-direct {v1, v3, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :goto_16
    iget v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->z:I

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->OutsideMirror:Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->id:I

    invoke-static {v1, v4}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->d(II)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 78
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u5916\u540e\u89c6\u955c-\u6253\u5f00"

    invoke-direct {v1, v2, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 79
    :cond_19
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u5916\u540e\u89c6\u955c-\u5173\u95ed"

    invoke-direct {v1, v3, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    :goto_17
    iget v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->z:I

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->InsideMirror:Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->id:I

    invoke-static {v1, v4}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->d(II)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 81
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u5185\u540e\u89c6\u955c-\u6253\u5f00"

    invoke-direct {v1, v2, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 82
    :cond_1a
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v4, "\u5185\u540e\u89c6\u955c-\u5173\u95ed"

    invoke-direct {v1, v3, v4}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :goto_18
    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->n:Z

    if-eqz p1, :cond_1b

    .line 84
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v1, "\u96e8\u5237-\u6253\u5f00"

    invoke-direct {p1, v2, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 85
    :cond_1b
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;

    const-string v1, "\u96e8\u5237-\u5173\u95ed"

    invoke-direct {p1, v3, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;-><init>(ZLjava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :goto_19
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/y;->b:Landroidx/lifecycle/z;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/lifecycle/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/z<",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/a;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/y;->a:Landroidx/lifecycle/z;

    return-object v0
.end method

.method public final b()Landroidx/lifecycle/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/z<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/y;->c:Landroidx/lifecycle/z;

    return-object v0
.end method

.method public final c()Landroidx/lifecycle/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/z<",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/a0/d;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/y;->b:Landroidx/lifecycle/z;

    return-object v0
.end method

.method public final d(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 1

    const-string v0, "signalGetter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/y;->e(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    .line 2
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/y;->h(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    .line 3
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/y;->g(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method

.method public final f(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 1

    const-string v0, "signalGetter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/y;->e(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    .line 2
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/y;->h(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    .line 3
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/signal/y;->g(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method
