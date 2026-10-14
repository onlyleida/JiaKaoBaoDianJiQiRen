.class public final Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity$a;,
        Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRadarDebugBinding;",
        ">;",
        "Lcn/mucang/android/jiakaoyi/signal/c/f/a;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00182\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0002\u0018\u0019B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J\u0016\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0008\u0010\u0010\u001a\u00020\u0008H\u0016J\u0008\u0010\u0011\u001a\u00020\u0012H\u0014J\u0008\u0010\u0013\u001a\u00020\u0012H\u0014J\u0010\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u00020\u000fH\u0003J\u0010\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0017H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRadarDebugBinding;",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "()V",
        "adapter",
        "Lcom/drakeet/multitype/MultiTypeAdapter;",
        "buildModuleStateStr",
        "",
        "carModel",
        "Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;",
        "buildRadarData",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/DebugRadarSignalItem;",
        "signal",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveRadarSignal;",
        "getStatName",
        "init",
        "",
        "onDestroy",
        "onRadarSignal",
        "onSignalChanged",
        "signalGetter",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "Companion",
        "RadarDebugItemBinder",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity$a;


# instance fields
.field private final b:Lcom/drakeet/multitype/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity;->c:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    .line 2
    new-instance v6, Lcom/drakeet/multitype/f;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity$b;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity;)V

    .line 4
    const-class v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/DebugRadarSignalItem;

    invoke-virtual {v6, v1, v0}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 5
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    .line 6
    iput-object v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity;->b:Lcom/drakeet/multitype/f;

    return-void
.end method

.method private final j(Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->O:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "\u6545\u969c\u7801:"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    if-nez v1, :cond_1

    const-string p1, "\u6ca1\u6709\u4fe1\u53f7"

    return-object p1

    .line 5
    :cond_1
    iget v2, v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->mainBoardState:I

    const-string v3, ")/"

    if-lez v2, :cond_2

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e3b\u63a7\u6545\u969c("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->mainBoardState:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_2
    iget v2, v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->safeBoardState:I

    if-lez v2, :cond_3

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5b89\u5168\u6a21\u5757\u6545\u969c/("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->safeBoardState:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_3
    iget v2, v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->ultrasonic1State:I

    if-lez v2, :cond_4

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8d85\u58f0\u6ce2\u6a21\u57571\u6545\u969c/("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->ultrasonic1State:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_4
    iget v2, v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->ultrasonic2State:I

    if-lez v2, :cond_5

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8d85\u58f0\u6ce2\u6a21\u57572\u6545\u969c/("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->ultrasonic2State:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    :cond_5
    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->microwaveState:I

    if-lez v1, :cond_6

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5fae\u6ce2\u6a21\u5757\u6545\u969c/("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->microwaveState:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "result.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p1, "\u6b63\u5e38"

    return-object p1

    :cond_7
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final k(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/DebugRadarSignalItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRadarDebugBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRadarDebugBinding;->radarContainer:Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutRadarSignalBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutRadarSignalBinding;->frontRadar:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->getConfig()Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;->a:I

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRadarDebugBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRadarDebugBinding;->radarContainer:Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutRadarSignalBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutRadarSignalBinding;->backRadar:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->getConfig()Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;

    move-result-object v2

    iget v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;->a:I

    const/4 v3, 0x0

    if-lez v1, :cond_2

    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v5, v4, 0x1

    .line 4
    iget-object v6, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;->a:[I

    const-string v7, "signal.frontRadarDis"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v4}, Lkotlin/collections/k;->A([II)Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 5
    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/safe/DebugRadarSignalItem;

    invoke-direct {v6}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/DebugRadarSignalItem;-><init>()V

    .line 6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "\u524d\u96f7\u8fbe"

    invoke-static {v8, v7}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;->setText(Ljava/lang/String;)V

    .line 7
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;->setValue(Ljava/lang/String;)V

    .line 8
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    if-lt v5, v1, :cond_1

    goto :goto_2

    :cond_1
    move v4, v5

    goto :goto_0

    :cond_2
    :goto_2
    if-lez v2, :cond_5

    :goto_3
    add-int/lit8 v1, v3, 0x1

    .line 9
    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;->b:[I

    const-string v5, "signal.backRadarDis"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v3}, Lkotlin/collections/k;->A([II)Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 10
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/safe/DebugRadarSignalItem;

    invoke-direct {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/DebugRadarSignalItem;-><init>()V

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "\u540e\u96f7\u8fbe"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;->setText(Ljava/lang/String;)V

    .line 12
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeServerConfigModel;->setValue(Ljava/lang/String;)V

    .line 13
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    if-lt v1, v2, :cond_4

    goto :goto_5

    :cond_4
    move v3, v1

    goto :goto_3

    :cond_5
    :goto_5
    return-object v0
.end method

.method private static final l(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity;->r(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;)V

    return-void
.end method

.method private static final m(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final n(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/HardwareLogActivity;->n:Lcn/mucang/android/jiakaoyi/teachingk2/ui/HardwareLogActivity$a;

    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/HardwareLogActivity$a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic o(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity;->n(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity;->l(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;)V

    return-void
.end method

.method public static synthetic q(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity;->m(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity;Landroid/view/View;)V

    return-void
.end method

.method private final r(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity;->b:Lcom/drakeet/multitype/f;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity;->k(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity;->b:Lcom/drakeet/multitype/f;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 3
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;->a:[I

    .line 4
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;->b:[I

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRadarDebugBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRadarDebugBinding;->radarContainer:Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutRadarSignalBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutRadarSignalBinding;->frontRadar:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->b([I)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRadarDebugBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRadarDebugBinding;->radarContainer:Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutRadarSignalBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutRadarSignalBinding;->backRadar:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->b([I)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u96f7\u8fbe\u8c03\u8bd5\u9875\u9762"

    return-object v0
.end method

.method protected init()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRadarDebugBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRadarDebugBinding;->radarContainer:Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutRadarSignalBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutRadarSignalBinding;->frontRadar:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;->b()Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->setConfig(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRadarDebugBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRadarDebugBinding;->radarContainer:Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutRadarSignalBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/LayoutRadarSignalBinding;->backRadar:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;->a()Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->setConfig(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/z;

    .line 4
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/s;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/s;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRadarDebugBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRadarDebugBinding;->title:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v1, "\u96f7\u8fbe\u4fe1\u53f7\u8c03\u8bd5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRadarDebugBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRadarDebugBinding;->title:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/t;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/t;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRadarDebugBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRadarDebugBinding;->dataRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRadarDebugBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRadarDebugBinding;->dataRv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity;->b:Lcom/drakeet/multitype/f;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRadarDebugBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRadarDebugBinding;->llError:Landroid/widget/LinearLayout;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/r;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/r;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    .line 12
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRadarDebugBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRadarDebugBinding;->demoFl:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 14
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRadarDebugBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRadarDebugBinding;->infoCl:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 3

    const-string v0, "signalGetter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRadarDebugBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRadarDebugBinding;->speedTv:Landroid/widget/TextView;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRadarDebugBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRadarDebugBinding;->rpmTv:Landroid/widget/TextView;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRadarDebugBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRadarDebugBinding;->statusTv:Landroid/widget/TextView;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    const-string v2, ""

    if-nez v1, :cond_0

    :goto_0
    move-object v1, v2

    goto :goto_1

    :cond_0
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->safeBoardBrakeState:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeState;->state:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRadarDebugBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRadarDebugBinding;->targetTv:Landroid/widget/TextView;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->G:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSenorInfo;->safeModuleBrakeReason:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeSource;->src:Ljava/lang/String;

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    move-object v2, v1

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRadarDebugBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityRadarDebugBinding;->errorTv:Landroid/widget/TextView;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    const-string v1, "signalGetter.car"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/RadarDebugActivity;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
