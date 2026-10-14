.class public final Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/DebugProtocolActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/DebugProtocolActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityDebugProtocolBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00082\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0008B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0007H\u0015\u00a8\u0006\t"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/DebugProtocolActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityDebugProtocolBinding;",
        "()V",
        "getStatName",
        "",
        "init",
        "",
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
.field public static final b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/DebugProtocolActivity$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/DebugProtocolActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/DebugProtocolActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/DebugProtocolActivity;->b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/DebugProtocolActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    return-void
.end method

.method private static final j(Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/DebugProtocolActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityDebugProtocolBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityDebugProtocolBinding;->tvSignalInfo:Landroid/widget/TextView;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6cb9\u91cf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->l0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "L, \u51b7\u5374\u6db2\u6e29\u5ea6="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->m0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u5ea6, \u5269\u4f59\u7eed\u822a\u91cc\u7a0b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->n0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "km, \u603b\u91cc\u7a0b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;->o0:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "km"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final k(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object p0

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderFaultCodeReq:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->Q(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;[B)Z

    return-void
.end method

.method private static final l(Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/DebugProtocolActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/o;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityDebugProtocolBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityDebugProtocolBinding;->tvReqRet:Landroid/widget/TextView;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/o;->a:[I

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final m(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object p0

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->OrderFaultCodeClear:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->Q(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;[B)Z

    return-void
.end method

.method private static final n(Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/DebugProtocolActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/n;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityDebugProtocolBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityDebugProtocolBinding;->tvClearRet:Landroid/widget/TextView;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/n;->a:Z

    if-eqz p1, :cond_0

    const-string p1, "\u6e05\u9664\u6210\u529f"

    goto :goto_0

    :cond_0
    const-string p1, "\u6e05\u9664\u5931\u8d25"

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final o(Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/DebugProtocolActivity;Landroid/view/View;)V
    .locals 9

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityDebugProtocolBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityDebugProtocolBinding;->etRainValue:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "\u8bf7\u8f93\u5165\u96e8\u5929\u6a21\u5f0f\u7684\u6570\u503c"

    .line 3
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "getCurrentActivity()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;-><init>(Landroid/content/Context;)V

    const-string v0, "\u6b63\u5728\u4e0b\u53d1..."

    .line 5
    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->b(Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/q;

    const-class v2, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/c;

    const/4 v3, 0x0

    const-wide/16 v4, 0x7d0

    .line 7
    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/DebugProtocolActivity$init$6$1;

    invoke-direct {v6, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/DebugProtocolActivity$init$6$1;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/DebugProtocolActivity$init$6$2;

    invoke-direct {v7, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/DebugProtocolActivity$init$6$2;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    new-instance v8, Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/DebugProtocolActivity$init$6$3;

    invoke-direct {v8, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/DebugProtocolActivity$init$6$3;-><init>(Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;)V

    move-object v1, v0

    .line 8
    invoke-direct/range {v1 .. v8}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;-><init>(Ljava/lang/Class;IJLkotlin/jvm/b/a;Lkotlin/jvm/b/a;Lkotlin/jvm/b/l;)V

    .line 9
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->i()V

    return-void
.end method

.method public static synthetic p(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/DebugProtocolActivity;->k(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/DebugProtocolActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/DebugProtocolActivity;->o(Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/DebugProtocolActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/DebugProtocolActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/DebugProtocolActivity;->j(Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/DebugProtocolActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;)V

    return-void
.end method

.method public static synthetic s(Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/DebugProtocolActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/n;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/DebugProtocolActivity;->n(Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/DebugProtocolActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/n;)V

    return-void
.end method

.method public static synthetic t(Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/DebugProtocolActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/o;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/DebugProtocolActivity;->l(Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/DebugProtocolActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/o;)V

    return-void
.end method

.method public static synthetic u(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/DebugProtocolActivity;->m(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u786c\u4ef6\u534f\u8bae\u8c03\u8bd5"

    return-object v0
.end method

.method protected init()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e0;

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/c;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/DebugProtocolActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityDebugProtocolBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityDebugProtocolBinding;->btnReqFaultCode:Landroid/widget/Button;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/a;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/o;

    .line 4
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/e;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/e;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/DebugProtocolActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityDebugProtocolBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityDebugProtocolBinding;->btnClearFaultCode:Landroid/widget/Button;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/f;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/f;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/n;

    .line 6
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/d;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/DebugProtocolActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityDebugProtocolBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityDebugProtocolBinding;->btnRainDone:Landroid/widget/Button;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/b;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/test/DebugProtocolActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
