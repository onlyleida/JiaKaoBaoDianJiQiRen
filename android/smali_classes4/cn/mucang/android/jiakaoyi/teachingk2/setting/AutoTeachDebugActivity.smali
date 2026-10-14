.class public final Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NotifyDataSetChanged"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity$a;,
        Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u00192\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0002\u0019\u001aB\u0005\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u0008\u0010\u0012\u001a\u00020\rH\u0014J\u0008\u0010\u0013\u001a\u00020\rH\u0002J\u0008\u0010\u0014\u001a\u00020\rH\u0002J\u0008\u0010\u0015\u001a\u00020\rH\u0002J\u0012\u0010\u0016\u001a\u00020\r2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;",
        "Landroid/view/View$OnClickListener;",
        "()V",
        "receiveAdapter",
        "Lcom/drakeet/multitype/MultiTypeAdapter;",
        "receiveList",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoTeachDebugger;",
        "sendAdapter",
        "sendList",
        "addReceiveData",
        "",
        "any",
        "",
        "getStatName",
        "",
        "init",
        "initAutoTeach",
        "initListen",
        "initOrder",
        "onClick",
        "v",
        "Landroid/view/View;",
        "Companion",
        "ItemBinder",
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
.field public static final f:Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity$a;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoTeachDebugger;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/drakeet/multitype/f;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoTeachDebugger;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/drakeet/multitype/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->f:Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->b:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/drakeet/multitype/f;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity$b;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity$b;-><init>()V

    .line 4
    const-class v2, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoTeachDebugger;

    invoke-virtual {v0, v2, v1}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 5
    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->c:Lcom/drakeet/multitype/f;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->d:Ljava/util/List;

    .line 7
    new-instance v0, Lcom/drakeet/multitype/f;

    const/4 v2, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity$b;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity$b;-><init>()V

    .line 8
    const-class v2, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoTeachDebugger;

    invoke-virtual {v0, v2, v1}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 9
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->e:Lcom/drakeet/multitype/f;

    return-void
.end method

.method private static final A(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$c;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->j(Ljava/lang/Object;)V

    return-void
.end method

.method private static final B(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->j(Ljava/lang/Object;)V

    return-void
.end method

.method private static final C(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$d;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->j(Ljava/lang/Object;)V

    return-void
.end method

.method private final D()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;->wheelTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/a0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/a0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;->gearTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/u;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/u;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;->speedTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/o;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/o;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;->motorTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/a;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final E(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;->speedEt:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/p;->a:Lcn/mucang/android/jiakaoyi/teachingk2/setting/p;

    invoke-static {p1, p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/e;->i(ZILcn/mucang/android/jiakaoyi/framework/h/b;)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/x;->a:Lcn/mucang/android/jiakaoyi/teachingk2/setting/x;

    invoke-static {p1, p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/e;->i(ZILcn/mucang/android/jiakaoyi/framework/h/b;)V

    :goto_1
    return-void
.end method

.method private static final F(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$e;)V
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    if-eqz p0, :cond_0

    const-string p0, "\u4e0d\u63a7\u5236\u901f\u5ea6\u6210\u529f"

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "\u4e0d\u63a7\u5236\u901f\u5ea6\u5931\u8d25"

    .line 3
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static final G(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$e;)V
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    if-eqz p0, :cond_0

    const-string p0, "\u63a7\u5236\u901f\u5ea6\u6210\u529f"

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "\u63a7\u5236\u901f\u5ea6\u5931\u8d25"

    .line 3
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static final H(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;->motorEt:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;->directionEt:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    int-to-byte p0, v0

    int-to-byte p1, p1

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/l;->a:Lcn/mucang/android/jiakaoyi/teachingk2/setting/l;

    invoke-static {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/e;->l(BBLcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method private static final I(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$c;)V
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    if-eqz p0, :cond_0

    const-string p0, "\u63a7\u5236\u7535\u673a\u6210\u529f"

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "\u63a7\u5236\u7535\u673a\u5931\u8d25"

    .line 3
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static final J(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;->wheelEt:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/setting/e;

    invoke-static {p1, p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/e;->k(ZSLcn/mucang/android/jiakaoyi/framework/h/b;)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    int-to-short p0, p0

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/m;->a:Lcn/mucang/android/jiakaoyi/teachingk2/setting/m;

    invoke-static {p1, p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/e;->k(ZSLcn/mucang/android/jiakaoyi/framework/h/b;)V

    :goto_1
    return-void
.end method

.method private static final K(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$g;)V
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    if-eqz p0, :cond_0

    const-string p0, "\u4e0d\u63a7\u5236\u65b9\u5411\u76d8\u6210\u529f"

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "\u4e0d\u63a7\u5236\u65b9\u5411\u76d8\u5931\u8d25"

    .line 3
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static final L(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$g;)V
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    if-eqz p0, :cond_0

    const-string p0, "\u63a7\u5236\u65b9\u5411\u76d8\u6210\u529f"

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "\u63a7\u5236\u65b9\u5411\u76d8\u5931\u8d25"

    .line 3
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static final M(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;->gearEt:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object p0

    const-string v0, "parse(viewBinding.gearEt.text.toString().toInt())"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, p0

    goto :goto_0

    :catch_0
    nop

    .line 3
    :goto_0
    sget-object p0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p1, p0, :cond_0

    .line 4
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/h;->a:Lcn/mucang/android/jiakaoyi/teachingk2/setting/h;

    invoke-static {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/e;->g(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    :cond_0
    return-void
.end method

.method private static final N(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$b;)V
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    if-eqz p0, :cond_0

    const-string p0, "\u8bbe\u7f6e\u6321\u4f4d\u6210\u529f"

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "\u8bbe\u7f6e\u6321\u4f4d\u5931\u8d25"

    .line 3
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static synthetic O(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->H(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic P(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$b;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->u(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$b;)V

    return-void
.end method

.method public static synthetic Q(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$e;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->w(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$e;)V

    return-void
.end method

.method public static synthetic R(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/c;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->y(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/c;)V

    return-void
.end method

.method public static synthetic S(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$g;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->K(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$g;)V

    return-void
.end method

.method public static synthetic T(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$c;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->A(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$c;)V

    return-void
.end method

.method public static synthetic U(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$g;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->t(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$g;)V

    return-void
.end method

.method public static synthetic V(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$b;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->N(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$b;)V

    return-void
.end method

.method public static synthetic W(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$d;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->C(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$d;)V

    return-void
.end method

.method public static synthetic X(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$f;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->q0(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$f;)V

    return-void
.end method

.method public static synthetic Y(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->k(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Z(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$c;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->I(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$c;)V

    return-void
.end method

.method public static synthetic a0(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$g;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->L(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$g;)V

    return-void
.end method

.method public static synthetic b0(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$f;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->v(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$f;)V

    return-void
.end method

.method public static synthetic c0(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->E(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d0(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$e;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->F(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$e;)V

    return-void
.end method

.method public static synthetic e0(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$c;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->x(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$c;)V

    return-void
.end method

.method public static synthetic f0(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->B(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;)V

    return-void
.end method

.method public static synthetic g0(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->o(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h0(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/b;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->z(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/b;)V

    return-void
.end method

.method public static synthetic i0(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->M(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Landroid/view/View;)V

    return-void
.end method

.method private final j(Ljava/lang/Object;)V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoTeachDebugger;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoTeachDebugger;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v1, 0x1f4

    if-le p1, v1, :cond_0

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->e:Lcom/drakeet/multitype/f;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->d:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->e:Lcom/drakeet/multitype/f;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public static synthetic j0(Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->q(Ljava/lang/Boolean;)V

    return-void
.end method

.method private static final k(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static synthetic k0(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->l(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Landroid/view/View;)V

    return-void
.end method

.method private static final l(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/test/BackCenterTestPage;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic l0(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$e;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->G(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$e;)V

    return-void
.end method

.method private static final m(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Landroid/view/View;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->AutoTeach:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity$init$3$1;

    invoke-direct {v3, p1, v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity$init$3$1;-><init>(Landroid/view/View;ZLcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;)V

    invoke-static {p0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->c(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;Ljava/lang/String;Lkotlin/jvm/b/a;)V

    return-void
.end method

.method public static synthetic m0(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->m(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Landroid/view/View;)V

    return-void
.end method

.method private final n()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;->pathTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/s;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/s;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;->startTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;->pauseTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;->resumeTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;->endTv:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic n0(Ljava/util/List;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->p(Ljava/util/List;)V

    return-void
.end method

.method private static final o(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Landroid/view/View;)V
    .locals 10

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->AutoTeach:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    new-instance p0, Lcn/mucang/android/jiakaoyi/signal/communicate/q;

    const-class v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/c;

    const/4 v2, 0x0

    const-wide/16 v3, 0x7d0

    .line 3
    sget-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity$initAutoTeach$1$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity$initAutoTeach$1$1;

    sget-object v6, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity$initAutoTeach$1$2;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity$initAutoTeach$1$2;

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object v0, p0

    .line 4
    invoke-direct/range {v0 .. v9}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;-><init>(Ljava/lang/Class;IJLkotlin/jvm/b/a;Lkotlin/jvm/b/a;Lkotlin/jvm/b/l;ILkotlin/jvm/internal/o;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->i()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;->numberEt:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    .line 7
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p0, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 8
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;-><init>()V

    .line 9
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    int-to-byte v3, v3

    iput-byte v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->gear:B

    const/16 v3, 0x2d

    .line 10
    iput-short v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->heading:S

    .line 11
    iput-short p1, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->wheel:S

    int-to-double v3, v1

    const-wide/high16 v5, 0x403e000000000000L    # 30.0

    mul-double v3, v3, v5

    .line 12
    iput-wide v3, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    const/16 v5, 0x64

    int-to-double v5, v5

    add-double/2addr v3, v5

    .line 13
    iput-wide v3, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    .line 14
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_1
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/e;->a:Ljava/util/concurrent/ExecutorService;

    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/z;

    invoke-direct {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/z;-><init>(Ljava/util/List;)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic o0(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->J(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Landroid/view/View;)V

    return-void
.end method

.method private static final p(Ljava/util/List;)V
    .locals 1

    const-string v0, "$list"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/v;->a:Lcn/mucang/android/jiakaoyi/teachingk2/setting/v;

    invoke-static {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/e;->h(Ljava/util/List;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    return-void
.end method

.method public static synthetic p0(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoTeachDebugger;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->s(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoTeachDebugger;)V

    return-void
.end method

.method private static final q(Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "it"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "\u4e0b\u53d1\u8def\u7ebf\u6210\u529f"

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "\u4e0b\u53d1\u8def\u7ebf\u5931\u8d25"

    .line 3
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static final q0(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$f;)V
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    if-eqz p0, :cond_0

    const-string p0, "\u8bbe\u7f6e\u72b6\u6001\u6210\u529f"

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "\u8bbe\u7f6e\u72b6\u6001\u5931\u8d25"

    .line 3
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final r()V
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/b0;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/b0;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;)V

    const-class v1, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoTeachDebugger;

    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->i(Landroidx/lifecycle/r;Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$g;

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/g;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/g;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$b;

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/b;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$f;

    .line 4
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/n;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/n;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$e;

    .line 5
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/c;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$c;

    .line 6
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/q;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/q;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/c;

    .line 7
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/d;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/b;

    .line 8
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/t;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/t;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 9
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/f;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/f;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;)V

    const-class v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$c;

    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->i(Landroidx/lifecycle/r;Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V

    .line 10
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/r;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/r;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;)V

    const-class v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/e$b;

    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->i(Landroidx/lifecycle/r;Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V

    .line 11
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/i;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/i;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;)V

    const-class v1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$d;

    invoke-static {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/Tiger;->i(Landroidx/lifecycle/r;Lcn/mucang/android/jiakaoyi/framework/h/b;Ljava/lang/Class;)V

    return-void
.end method

.method private static final s(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoTeachDebugger;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->b:Ljava/util/List;

    const/4 v1, 0x0

    const-string v2, "it"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->c:Lcom/drakeet/multitype/f;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->b:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 5
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->c:Lcom/drakeet/multitype/f;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private static final t(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$g;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->j(Ljava/lang/Object;)V

    return-void
.end method

.method private static final u(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$b;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->j(Ljava/lang/Object;)V

    return-void
.end method

.method private static final v(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$f;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->j(Ljava/lang/Object;)V

    return-void
.end method

.method private static final w(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$e;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->j(Ljava/lang/Object;)V

    return-void
.end method

.method private static final x(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/d$c;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->j(Ljava/lang/Object;)V

    return-void
.end method

.method private static final y(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/c;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->j(Ljava/lang/Object;)V

    return-void
.end method

.method private static final z(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/b;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->j(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u81ea\u52a8\u793a\u6559\u6307\u4ee4\u8c03\u8bd5\u9875"

    return-object v0
.end method

.method protected init()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/k;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/k;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v1, "\u81ea\u52a8\u793a\u6559\u8c03\u8bd5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/w;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/w;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;->teachCb:Landroid/widget/ImageView;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->AutoTeach:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;->teachCb:Landroid/widget/ImageView;

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/setting/y;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/y;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;->middle:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;->middle:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->c:Lcom/drakeet/multitype/f;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;->right:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 10
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;->right:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->e:Lcom/drakeet/multitype/f;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 11
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;->pathTv:Landroid/widget/TextView;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u4e0b\u53d1\u8def\u7ebf"

    goto :goto_0

    :cond_0
    const-string v1, "\u51c6\u5907\u793a\u6559"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->D()V

    .line 13
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->n()V

    .line 14
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity;->r()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->AutoTeach:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;->Start:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;->startTv:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;->pauseTv:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;->Pause:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;->resumeTv:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;->Resume:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;->endTv:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;->Stop:Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;

    .line 10
    :cond_3
    :goto_0
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/setting/j;->a:Lcn/mucang/android/jiakaoyi/teachingk2/setting/j;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/e;->j(Lcn/mucang/android/jiakaoyi/teachingk2/autopilot/AutoPilotState;Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    goto :goto_2

    .line 11
    :cond_4
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 12
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;->startTv:Landroid/widget/TextView;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_1

    .line 13
    :cond_5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;->endTv:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 p1, 0x2

    iput p1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_1

    .line 14
    :cond_6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;->pauseTv:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 p1, 0x3

    iput p1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_1

    .line 15
    :cond_7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ActivityAutoTeachDebugBinding;->resumeTv:Landroid/widget/TextView;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x4

    iput p1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 16
    :cond_8
    :goto_1
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/communicate/q;

    const-class v2, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/c;

    const/4 v3, 0x0

    const-wide/16 v4, 0x7d0

    .line 17
    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity$onClick$2;

    invoke-direct {v6, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity$onClick$2;-><init>(Lkotlin/jvm/internal/Ref$IntRef;)V

    sget-object v7, Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity$onClick$3;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/setting/AutoTeachDebugActivity$onClick$3;

    const/4 v8, 0x0

    const/16 v9, 0x20

    const/4 v10, 0x0

    move-object v1, p1

    .line 18
    invoke-direct/range {v1 .. v10}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;-><init>(Ljava/lang/Class;IJLkotlin/jvm/b/a;Lkotlin/jvm/b/a;Lkotlin/jvm/b/l;ILkotlin/jvm/internal/o;)V

    .line 19
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/q;->i()V

    :goto_2
    return-void
.end method
