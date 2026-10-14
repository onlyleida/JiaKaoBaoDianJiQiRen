.class public final Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;
.super Lcn/mucang/android/core/config/n;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u0000  2\u00020\u0001:\u0001 B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u000eH\u0002J\u0008\u0010\u000f\u001a\u00020\u000eH\u0002J\u0008\u0010\u0010\u001a\u00020\u000eH\u0002J\u0012\u0010\u0011\u001a\u00020\u000e2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0014J,\u0010\u0014\u001a\u00020\u000e2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000c2\u000e\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u00172\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u000cH\u0002J\u0012\u0010\u001a\u001a\u00020\u000e2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000cH\u0002J\u0018\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;",
        "Lcn/mucang/android/core/config/MucangActivity;",
        "()V",
        "binding",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;",
        "getBinding",
        "()Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;",
        "setBinding",
        "(Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;)V",
        "gearsVm",
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/viewmodel/GearsMainViewModel;",
        "getStatName",
        "",
        "initView",
        "",
        "loadData",
        "observeDataChange",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "renderDataZoneArea",
        "gearCategory",
        "gearsList",
        "",
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;",
        "currentSelectGear",
        "renderEmptyDataZoneArea",
        "setEditBtnStyle",
        "editBtn",
        "Landroid/widget/TextView;",
        "isSelected",
        "",
        "Companion",
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
.field public a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;

.field private b:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/config/n;-><init>()V

    return-void
.end method

.method public static synthetic A(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->l(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic B(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->I(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Ljava/lang/Integer;)V

    return-void
.end method

.method private final C()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;->r()V

    return-void

    :cond_0
    const-string v0, "gearsVm"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method private final D()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;

    const/4 v1, 0x0

    const-string v2, "gearsVm"

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;->h()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/i;

    invoke-direct {v3, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/i;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;)V

    invoke-virtual {v0, p0, v3}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;->g()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/h;

    invoke-direct {v3, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/h;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;)V

    invoke-virtual {v0, p0, v3}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;->i()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/e;

    invoke-direct {v3, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/e;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;)V

    invoke-virtual {v0, p0, v3}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;->f()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/g;

    invoke-direct {v3, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/g;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;)V

    invoke-virtual {v0, p0, v3}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;->c()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o;

    invoke-direct {v3, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/o;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;)V

    invoke-virtual {v0, p0, v3}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;->d()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/f;

    invoke-direct {v3, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/f;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;)V

    invoke-virtual {v0, p0, v3}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;->b()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/k;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/k;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 10
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 13
    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method private static final E(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Lkotlin/Pair;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->h()Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;->gearsSketchZone:Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsSketchZoneBinding;

    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsSketchZoneBinding;->gearsSketch:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearSketchViewGroup;

    invoke-virtual {v1, v0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearSketchViewGroup;->f(II)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->h()Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;->gearsGuideZone:Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsGuideZoneBinding;

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsGuideZoneBinding;->gearLocValue1:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final F(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Ljava/util/List;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x0

    const-string v2, "gearsVm"

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;->f()Landroidx/lifecycle/z;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->P(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;->f()Landroidx/lifecycle/z;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;->i()Landroidx/lifecycle/z;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    invoke-direct {p0, v0, p1, v3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->M(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 6
    :goto_2
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->h()Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;->gearsSketchZone:Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsSketchZoneBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsSketchZoneBinding;->gearsSketch:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearSketchViewGroup;

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;->f()Landroidx/lifecycle/z;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearSketchViewGroup;->e(Ljava/lang/String;Ljava/util/List;)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->h()Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;->gearsSketchZone:Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsSketchZoneBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsSketchZoneBinding;->gearsSketch:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearSketchViewGroup;

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity$a;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity$a;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;)V

    invoke-virtual {p1, v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearSketchViewGroup;->setModifyCallback(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/j;)V

    return-void

    .line 8
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 10
    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method private static final G(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Ljava/lang/String;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;

    const/4 v1, 0x0

    const-string v2, "gearsVm"

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;->g()Landroidx/lifecycle/z;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_3

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;->f()Landroidx/lifecycle/z;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->P(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_3
    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;->f()Landroidx/lifecycle/z;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1, v0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->M(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 5
    :goto_2
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->h()Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;->gearsSketchZone:Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsSketchZoneBinding;

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsSketchZoneBinding;->gearsSketch:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearSketchViewGroup;

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/view/GearSketchViewGroup;->d(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method private static final H(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\u81ea\u52a8\u6321"

    .line 1
    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->h()Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;->gearsSketchZone:Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsSketchZoneBinding;

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsSketchZoneBinding;->switchGearsCategory:Landroid/widget/TextView;

    const-string p1, "\u5b66\u4e60\u624b\u52a8\u6321"

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->h()Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;->gearsSketchZone:Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsSketchZoneBinding;

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsSketchZoneBinding;->switchGearsCategory:Landroid/widget/TextView;

    const-string p1, "\u5b66\u4e60\u81ea\u52a8\u6321"

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private static final I(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Ljava/lang/Integer;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->h()Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;->gearsGuideZone:Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsGuideZoneBinding;

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsGuideZoneBinding;->deviceStatus:Landroid/widget/TextView;

    const-string p1, "\u4e32\u53e3\u5df2\u6253\u5f00"

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->h()Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;->gearsGuideZone:Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsGuideZoneBinding;

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsGuideZoneBinding;->deviceStatus:Landroid/widget/TextView;

    const-string p1, "\u4e32\u53e3\u5df2\u65ad\u5f00"

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private static final J(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Ljava/util/Map;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " :"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->h()Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;->deviceInfo:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final K(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->h()Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;->gearsGuideZone:Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsGuideZoneBinding;

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsGuideZoneBinding;->gearLocValue0:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final L(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private final M(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->h()Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;->gearsDataZone:Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsDataZoneBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsDataZoneBinding;->detailItems:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->h()Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;->gearsDataZone:Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsDataZoneBinding;

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsDataZoneBinding;->detailItems:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    .line 4
    invoke-static {v1, v2, v3}, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsGearsItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsGearsItemBinding;

    move-result-object v1

    const-string v2, "inflate(\n               \u2026Items, true\n            )"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v2, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsGearsItemBinding;->gearsItemTip:Landroid/widget/TextView;

    sget-object v4, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/b;->a:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/b;

    iget-object v5, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;->type:Ljava/lang/String;

    invoke-virtual {v4, p1, v5}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/q0/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v2, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsGearsItemBinding;->gearsItemValue:Landroid/widget/TextView;

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v6, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;->top:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v6, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;->right:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v5, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 8
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v2, v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;->type:Ljava/lang/String;

    invoke-static {v2, p3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "itemView.editGearsItem"

    if-eqz v2, :cond_1

    .line 10
    iget-object v0, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsGearsItemBinding;->editGearsItem:Landroid/widget/TextView;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->R(Landroid/widget/TextView;Z)V

    .line 11
    iget-object v0, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsGearsItemBinding;->editGearsItem:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/l;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/l;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v2, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsGearsItemBinding;->editGearsItem:Landroid/widget/TextView;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->R(Landroid/widget/TextView;Z)V

    .line 13
    iget-object v1, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsGearsItemBinding;->editGearsItem:Landroid/widget/TextView;

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/d;

    invoke-direct {v2, p0, v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/d;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private static final N(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;->D(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "gearsVm"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p1
.end method

.method private static final O(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$gearItem"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;

    if-eqz p0, :cond_0

    iget-object p1, p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;->type:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;->D(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "gearsVm"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final P(Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->h()Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;->gearsDataZone:Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsDataZoneBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsDataZoneBinding;->detailItems:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const-string v0, "\u81ea\u52a8\u6321"

    .line 2
    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "P\u6863"

    const-string v0, "R\u6863"

    const-string v1, "N\u6863"

    const-string v2, "D\u6863"

    .line 3
    filled-new-array {p1, v0, v1, v2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "1\u6863"

    const-string v1, "2\u6863"

    const-string v2, "3\u6863"

    const-string v3, "4\u6863"

    const-string v4, "5\u6863"

    const-string v5, "\u5012\u6863"

    const-string v6, "\u7a7a\u6863"

    .line 4
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->h()Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;->gearsDataZone:Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsDataZoneBinding;

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsDataZoneBinding;->detailItems:Landroid/widget/LinearLayout;

    const/4 v3, 0x1

    .line 7
    invoke-static {v1, v2, v3}, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsGearsItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsGearsItemBinding;

    move-result-object v1

    const-string v2, "inflate(\n               \u2026Items, true\n            )"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v2, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsGearsItemBinding;->gearsItemTip:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsGearsItemBinding;->gearsItemValue:Landroid/widget/TextView;

    const-string v2, "0,0,0,0"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, v1, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsGearsItemBinding;->editGearsItem:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private final R(Landroid/widget/TextView;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const-string p2, "\u5b8c\u6210\u7f16\u8f91"

    .line 1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p2, "#ffffffff"

    .line 2
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    sget p2, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->gears__blue_btn_selector:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const-string p2, "\u7f16\u8f91"

    .line 4
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p2, "#FF008AFF"

    .line 5
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    sget p2, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->gears__blue_btn_selector2:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method public static final synthetic g(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;)Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;

    return-object p0
.end method

.method private static final i(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;->v()V

    return-void

    :cond_0
    const-string p0, "gearsVm"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final initView()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->h()Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;->gearsSketchZone:Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsSketchZoneBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsSketchZoneBinding;->switchGearsCategory:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/m;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/m;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->h()Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;->gearsGuideZone:Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsGuideZoneBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsGuideZoneBinding;->obtainGearsData:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/c;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/c;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->h()Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;->gearsGuideZone:Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsGuideZoneBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsGuideZoneBinding;->markGears:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/b;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/b;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->h()Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;->gearsGuideZone:Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsGuideZoneBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsGuideZoneBinding;->viewDetail:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/j;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/j;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->h()Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;->deviceInfoCoverBg:Landroid/view/View;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/n;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/n;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->h()Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;->gearsGuideZone:Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsGuideZoneBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/GearsIncludeGearsGuideZoneBinding;->gearVersion:Landroid/widget/TextView;

    invoke-static {}, Lcn/mucang/android/core/utils/p;->k()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5f53\u524d\u7248\u672c v"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final j(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;->G()V

    return-void

    :cond_0
    const-string p0, "gearsVm"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final k(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;->t()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->h()Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;->deviceInfoZone:Landroid/widget/LinearLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_0
    const-string p0, "gearsVm"

    .line 3
    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private static final l(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->h()Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;->deviceInfoZone:Landroid/widget/LinearLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private static final m(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;->I()V

    return-void

    :cond_0
    const-string p0, "gearsVm"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic n(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->L(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->j(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->i(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->O(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/model/GearsDataModel$GearsItemModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->G(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic s(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Ljava/util/Map;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->J(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic t(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->H(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic u(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->F(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic v(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Lkotlin/Pair;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->E(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Lkotlin/Pair;)V

    return-void
.end method

.method public static synthetic w(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->k(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic x(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->K(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic y(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->N(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic z(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->m(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final Q(Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;

    return-void
.end method

.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u4e0a\u4f4d\u673a"

    return-object v0
.end method

.method public final h()Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->a:Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/core/config/n;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;

    move-result-object p1

    const-string v0, "inflate(LayoutInflater.from(this))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->Q(Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->h()Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/core/config/n;->setContentView(Landroid/view/View;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->h()Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;->title:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v0, "\u786c\u4ef6\u6321\u4f4d\u6807\u5b9a"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->h()Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityGearCelibrationBinding;->title:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/a;

    invoke-direct {v0, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/a;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    new-instance p1, Landroidx/lifecycle/m0;

    .line 7
    new-instance v0, Landroidx/lifecycle/m0$d;

    invoke-direct {v0}, Landroidx/lifecycle/m0$d;-><init>()V

    .line 8
    invoke-direct {p1, p0, v0}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/o0;Landroidx/lifecycle/m0$b;)V

    const-class v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;

    .line 9
    invoke-virtual {p1, v0}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object p1

    const-string v0, "ViewModelProvider(\n     \u2026ainViewModel::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;

    .line 10
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/r0/j;

    .line 11
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->initView()V

    .line 12
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->D()V

    .line 13
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/celibration/GearCalibrationActivity;->C()V

    return-void
.end method
