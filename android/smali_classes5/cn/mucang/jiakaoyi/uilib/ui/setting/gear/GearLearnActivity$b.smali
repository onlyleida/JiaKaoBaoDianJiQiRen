.class final Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u001f\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0002\u00a2\u0006\u0002\u0010\u0016J\u0006\u0010\u0017\u001a\u00020\u0018J\u0016\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cJ\u0016\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020\u0012R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006 "
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$GearLayout;",
        "",
        "gear",
        "Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;",
        "activity",
        "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;",
        "viewBinding",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;",
        "(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;)V",
        "getActivity",
        "()Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;",
        "editWatch",
        "Landroid/text/TextWatcher;",
        "getGear",
        "()Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;",
        "getViewBinding",
        "()Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;",
        "getValue",
        "",
        "value",
        "",
        "tip",
        "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Float;",
        "updateLearnState",
        "",
        "learnTv",
        "Landroid/widget/TextView;",
        "learning",
        "",
        "updateValue",
        "min",
        "max",
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
.field private final a:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field private final b:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;

.field private final c:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;

.field private final d:Landroid/text/TextWatcher;

.field final synthetic e:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;


# direct methods
.method public constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;",
            "Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;",
            "Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;",
            ")V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gear"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewBinding"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;->e:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;->a:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 3
    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;

    .line 4
    iput-object p4, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;->c:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;

    .line 5
    new-instance p3, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b$a;

    invoke-direct {p3, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b$a;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;)V

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;->d:Landroid/text/TextWatcher;

    .line 6
    iget-object p3, p4, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;->learnTv:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/j0;

    invoke-direct {v0, p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/j0;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;)V

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->g(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;

    const/4 p3, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_2

    .line 8
    :cond_0
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;->min:F

    cmpl-float v1, v0, p3

    if-lez v1, :cond_1

    .line 9
    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;->max:F

    :goto_0
    move p3, p1

    goto :goto_1

    .line 10
    :cond_1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;->lines:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 11
    iget-object p3, p1, Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;->lines:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    iget p3, p3, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->a:F

    const v0, 0x3f666666    # 0.9f

    mul-float p3, p3, v0

    .line 12
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/handle/gear/GearLinearResult;->lines:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->a:F

    const v0, 0x3f8ccccd    # 1.1f

    mul-float p1, p1, v0

    move v0, p3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    move p1, p3

    move p3, v0

    .line 13
    :goto_2
    invoke-virtual {p0, p3, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;->l(FF)V

    .line 14
    iget-object p1, p4, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;->gearTv:Landroid/widget/TextView;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    const-string p3, "\uff1a"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    const-string p1, "config"

    .line 15
    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method private static final a(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;Landroid/view/View;)V
    .locals 12

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->isSelected()Z

    move-result p2

    if-nez p2, :cond_0

    .line 2
    new-instance p2, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;

    .line 3
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;->c()Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;

    move-result-object v0

    .line 4
    new-instance v11, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u73b0\u5728\u5df2\u7ecf\u6302\u5230"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\u4e86\u5417\uff1f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    .line 6
    new-instance v7, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/i0;

    invoke-direct {v7, p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/i0;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;)V

    const/4 v8, 0x0

    const/16 v9, 0x40

    const/4 v10, 0x0

    const-string v2, "\u6e29\u99a8\u63d0\u793a"

    const-string v4, "\u5426"

    const-string v6, "\u662f\uff0c\u5f00\u59cb\u5b66\u4e60"

    move-object v1, v11

    .line 7
    invoke-direct/range {v1 .. v10}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZILkotlin/jvm/internal/o;)V

    .line 8
    invoke-direct {p2, v0, v11}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/s;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/s$b;)V

    .line 9
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u8bf7\u6302\u5230"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object p0

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\uff0c\u677e\u5f00\u79bb\u5408\u548c\u5239\u8f66\uff0c\u7136\u540e\u70b9\u51fb\u5f00\u59cb\u5b66\u4e60"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 11
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    .line 12
    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    :cond_0
    return-void
.end method

.method public static final synthetic b(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Float;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method private final e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Float;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    return-object v0

    .line 2
    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 3
    :catchall_0
    invoke-static {p2}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic g(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;->i(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;->a(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;Landroid/view/View;)V

    return-void
.end method

.method private static final i(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;Landroid/view/View;)V
    .locals 1

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "this$1"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    const-string v0, "\u5f00\u59cb\u5b66\u4e60"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;->j()V

    .line 3
    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->i(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;)Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/d;->h(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    return-void

    :cond_0
    const-string p0, "viewModel"

    invoke-static {p0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final c()Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;

    return-object v0
.end method

.method public final d()Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;->a:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-object v0
.end method

.method public final f()Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;->c:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;

    return-object v0
.end method

.method public final j()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;->e:Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;->h(Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;

    .line 3
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;->f()Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;->learnTv:Landroid/widget/TextView;

    const-string v3, "it.viewBinding.learnTv"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v1

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v3

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, v2, v1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;->k(Landroid/widget/TextView;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final k(Landroid/widget/TextView;Z)V
    .locals 1

    const-string v0, "learnTv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2
    sget p2, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->shape_008aff_r2:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/4 p2, -0x1

    .line 3
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string p2, "\u6b63\u5728\u5b66\u4e60"

    .line 4
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 5
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 6
    sget p2, Lcom/mucang/android/jiakaoyi/uilib/R$drawable;->shape_r2_s1_008aff:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const-string p2, "#FF008AFF"

    .line 7
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    const-string p2, "\u5f00\u59cb\u5b66\u4e60"

    .line 8
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public final l(FF)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;->c:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;->minTv:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;->d:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;->c:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;->maxTv:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;->d:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;->c:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;->minTv:Landroid/widget/EditText;

    sget-object v1, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v2, "%.1f"

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "java.lang.String.format(format, *args)"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;->c:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;->maxTv:Landroid/widget/EditText;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v0, v3

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {v2, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;->c:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;->minTv:Landroid/widget/EditText;

    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;->d:Landroid/text/TextWatcher;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 6
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;->c:Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/SettingGearLearnItemBinding;->maxTv:Landroid/widget/EditText;

    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/gear/GearLearnActivity$b;->d:Landroid/text/TextWatcher;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
