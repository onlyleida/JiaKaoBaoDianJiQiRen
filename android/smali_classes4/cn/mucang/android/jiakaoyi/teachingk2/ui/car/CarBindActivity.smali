.class public final Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0018\u0000 \u000f2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000fB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\t\u001a\u00020\nH\u0002J\u0008\u0010\u000b\u001a\u00020\nH\u0002J\u0008\u0010\u000c\u001a\u00020\u0008H\u0016J\u0008\u0010\r\u001a\u00020\nH\u0014J\u0008\u0010\u000e\u001a\u00020\nH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;",
        "()V",
        "model",
        "Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;",
        "types",
        "",
        "",
        "alreadyBind",
        "",
        "clearData",
        "getStatName",
        "init",
        "setView",
        "Companion",
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
.field public static final d:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity$a;


# instance fields
.field private final b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;->d:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;->b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;

    const-string v0, "\u5e73\u5934"

    const-string v1, "\u5c16\u5934"

    .line 3
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/s;->m([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;->c:Ljava/util/List;

    return-void
.end method

.method public static synthetic A(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;->R(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic B(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;->J(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic C(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;IILandroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;->K(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;IILandroid/content/Intent;)V

    return-void
.end method

.method public static synthetic D(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;->P(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;)V

    return-void
.end method

.method public static synthetic E(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;->n(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic F(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;IILandroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;->S(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;IILandroid/content/Intent;)V

    return-void
.end method

.method public static synthetic G(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;->L(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic H(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;->o(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;Landroid/view/View;)V

    return-void
.end method

.method private final I()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->cityName:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/i;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/i;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->nameSchoolTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/j;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/j;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->numberTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/o;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/o;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->okTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/f;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/f;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final J(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;->b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;->getCityCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "\u8bf7\u9009\u62e9\u57ce\u5e02"

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {p0}, Lf/a/a/a/j/a;->a(Landroid/app/Activity;)Lf/a/a/a/j/a;

    move-result-object p1

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;->e:Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity$a;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;->b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;->getCityCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity$a;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3e8

    .line 5
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/k;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/k;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;)V

    invoke-virtual {p1, v0, v1, v2}, Lf/a/a/a/j/a;->c(Landroid/content/Intent;ILf/a/a/a/j/c;)V

    return-void
.end method

.method private static final K(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;IILandroid/content/Intent;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    const-string p1, "key.result"

    .line 1
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    instance-of p2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    if-eqz p2, :cond_0

    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;->b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;->getDriveSchoolId()J

    move-result-wide p2

    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->driveSchoolId:J

    cmp-long v2, p2, v0

    if-nez v2, :cond_2

    return-void

    .line 3
    :cond_2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;->b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;

    invoke-virtual {p2, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;->setDriveSchoolId(J)V

    .line 4
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;->b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;

    iget-object p3, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->driveSchoolName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;->setDriveSchoolName(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->nameSchoolTv:Landroid/widget/TextView;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->driveSchoolName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->numberTv:Landroid/widget/TextView;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private static final L(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;Landroid/view/View;)V
    .locals 4

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;->b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;->getDriveSchoolId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    const-string p0, "\u8bf7\u9009\u62e9\u9a7e\u6821"

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-static {p0}, Lf/a/a/a/j/a;->a(Landroid/app/Activity;)Lf/a/a/a/j/a;

    move-result-object p1

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity;->e:Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity$a;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;->b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;->getDriveSchoolId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/select/SelectSchoolCarActivity$a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x3e8

    .line 5
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/b;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;)V

    invoke-virtual {p1, v0, v1, v2}, Lf/a/a/a/j/a;->c(Landroid/content/Intent;ILf/a/a/a/j/c;)V

    return-void
.end method

.method private static final M(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;IILandroid/content/Intent;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    const-string p1, "key.result"

    .line 1
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    instance-of p2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    if-eqz p2, :cond_0

    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;->b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;->getPlateNum()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->plateNum:Ljava/lang/String;

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    .line 3
    :cond_2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;->b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;

    iget-object p3, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->plateNum:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;->setPlateNum(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->numberTv:Landroid/widget/TextView;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;->plateNum:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private static final N(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;Landroid/view/View;)V
    .locals 9

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;->b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;->getPlateNum()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "\u8bf7\u5148\u8bbe\u7f6e\u8f66\u8f86\u4fe1\u606f"

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;

    .line 4
    new-instance v8, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;

    .line 5
    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/a;

    invoke-direct {v4, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;)V

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    const-string v1, "\u8f66\u8f86\u4fe1\u606f\u7ed1\u5b9a"

    const-string v2, "\u7ed1\u5b9a\u540e\u65e0\u6cd5\u624b\u52a8\u4fee\u6539\uff0c\u82e5\u9700\u4fee\u6539\u8bf7\u8054\u7cfb\u5ba2\u670d"

    const-string v3, "\u7ed1\u5b9a"

    move-object v0, v8

    .line 6
    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;ILkotlin/jvm/internal/o;)V

    .line 7
    invoke-direct {p1, p0, v8}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;-><init>(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog$b;)V

    .line 8
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/CommonAlertDialog;->show()V

    return-void
.end method

.method private static final O(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;-><init>(Landroid/app/Activity;)V

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/l;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/l;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;)V

    const-string p0, "\u6b63\u5728\u7ed1\u5b9a"

    const-string v1, "\u7ed1\u5b9a\u5931\u8d25"

    invoke-virtual {p1, v0, p0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/u;->h(Lcn/mucang/android/jiakaoyi/framework/base/dialog/u$e;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final P(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/b0;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/b0;-><init>()V

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;->b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;->getPlateNum()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/b0;->m(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/c0;->c(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;)V

    const-string v0, "\u7ed1\u5b9a\u6210\u529f"

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/d;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final Q(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;->k()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;->l()V

    return-void
.end method

.method private static final R(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;Landroid/view/View;)V
    .locals 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcn/mucang/android/selectcity/SelectCityStartupActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "EXTRA_SHOW_LOCATION_PANEL"

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "EXTRA_SHOW_WHOLE_COUNTRY"

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "EXTRA_ONLY_SHOW_CITY"

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5
    invoke-static {p0}, Lf/a/a/a/j/a;->a(Landroid/app/Activity;)Lf/a/a/a/j/a;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/n;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/n;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;)V

    const/16 p0, 0x3e8

    invoke-virtual {v0, p1, p0, v1}, Lf/a/a/a/j/a;->c(Landroid/content/Intent;ILf/a/a/a/j/c;)V

    return-void
.end method

.method private static final S(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;IILandroid/content/Intent;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    const-string p1, "RESULT_CITY_CODE"

    .line 1
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "RESULT_CITY_NAME"

    .line 2
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;->b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;->getCityCode()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;->b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;

    invoke-virtual {p3, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;->setCityCode(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;->b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;->setCityName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->cityName:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->nameSchoolTv:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->numberTv:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public static final synthetic j(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;->c:Ljava/util/List;

    return-object p0
.end method

.method private final k()V
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/c0;->a()Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->cityName:Landroid/widget/TextView;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;->getCityName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->cityName:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->nameSchoolTv:Landroid/widget/TextView;

    if-nez v0, :cond_1

    move-object v4, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;->getDriveSchoolName()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->nameSchoolTv:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->numberTv:Landroid/widget/TextView;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindInfo;->getPlateNum()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->numberTv:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->okTv:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private final l()V
    .locals 1

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/c;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/c;

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final m()V
    .locals 6

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 2
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/s/j;->a:Lcn/mucang/jiakaoyi/uilib/s/j;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/s/j;->a()V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->e()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "it"

    .line 5
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "versionInfo"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v5, v4, v3}, Lkotlin/text/l;->G(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "key_teach_plan_id"

    invoke-static {v1, v2, v5, v4, v3}, Lkotlin/text/l;->G(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    :cond_2
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->h(Ljava/lang/String;)Z

    goto :goto_0

    :cond_3
    :goto_1
    const-string v0, "res"

    .line 7
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/res/k;->b(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/m;->e(Ljava/io/File;)Z

    move-result v0

    const-string v1, "\u91cd\u65b0\u7ed1\u5b9a\u8bbe\u5907\u5220\u9664\u8d44\u6e90\u76ee\u5f55:"

    .line 8
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 9
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    .line 10
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    :goto_2
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 12
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u91cd\u65b0\u7ed1\u5b9a\u8bbe\u5907\u6e05\u9664\u6570\u636e\u5f02\u5e38:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method private static final n(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static final o(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;Landroid/view/View;)V
    .locals 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;->c:Ljava/util/List;

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity$init$2$1;

    invoke-direct {v3, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity$init$2$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Lcn/mucang/jiakaoyi/uilib/ui/widget/d;->c(Landroid/view/View;Ljava/util/List;Lkotlin/jvm/b/l;IZILjava/lang/Object;)V

    return-void
.end method

.method private static final p(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;Landroid/view/View;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->ClassDevice:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 4
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity$init$3$1;

    invoke-direct {v3, p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity$init$3$1;-><init>(Landroid/view/View;Z)V

    invoke-static {p0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->c(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Lkotlin/jvm/b/a;)V

    return-void
.end method

.method private static final q(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity;->f:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity$a;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/g;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/g;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;)V

    invoke-virtual {p1, p0, v0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/RealCarSelectActivity$a;->b(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method private static final r(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/car/c;->c(Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->realCarTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getCarDesc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public static synthetic s(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;->O(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic t(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;IILandroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;->M(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;IILandroid/content/Intent;)V

    return-void
.end method

.method public static synthetic u()V
    .locals 0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;->m()V

    return-void
.end method

.method public static synthetic v(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;->Q(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;)V

    return-void
.end method

.method public static synthetic w(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;->p(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic x(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;->N(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic y(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;->r(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;)V

    return-void
.end method

.method public static synthetic z(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;->q(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u8f66\u8f86\u4fe1\u606f\u8bbe\u7f6e"

    return-object v0
.end method

.method protected init()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->title:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v1, "\u8f66\u8f86\u4fe1\u606f\u8bbe\u7f6e"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->title:Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/TeachingTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/m;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/m;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->modelNameTv:Landroid/widget/TextView;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/c0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;->k()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;->I()V

    .line 8
    :goto_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->headLayout:Landroid/widget/LinearLayout;

    const-string v1, "viewBinding.headLayout"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->classDeviceLl:Landroid/widget/LinearLayout;

    const-string v1, "viewBinding.classDeviceLl"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->typeTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;->c:Ljava/util/List;

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->B2HeadType:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->j(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;I)I

    move-result v2

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;->c:Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/s;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->typeTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/p;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/p;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->deviceIv:Landroid/widget/ImageView;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->ClassDevice:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 16
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->deviceIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/e;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/e;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->realCarTv:Landroid/widget/TextView;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/c;->b()Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getCarDesc()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityCarInfoBinding;->realCarTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/h;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/h;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/car/CarBindActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
