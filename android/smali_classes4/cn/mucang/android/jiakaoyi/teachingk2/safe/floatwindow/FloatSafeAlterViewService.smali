.class public Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$b;
    }
.end annotation


# instance fields
.field private a:Landroid/view/WindowManager;

.field private b:Landroid/view/WindowManager$LayoutParams;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:I

.field private g:I

.field private h:I

.field private final i:Landroidx/lifecycle/a0;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/g;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->h:I

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/c;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/c;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->i:Landroidx/lifecycle/a0;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->j:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->h:I

    return p0
.end method

.method static synthetic b(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;)I
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->h:I

    return v0
.end method

.method static synthetic c(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;)I
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->h:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->h:I

    return v0
.end method

.method static synthetic d(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->c:Landroid/view/View;

    return-object p0
.end method

.method static synthetic e(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->b:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static synthetic f(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->f:I

    return p0
.end method

.method static synthetic g(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->g:I

    return p0
.end method

.method static synthetic h(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;)Landroid/view/WindowManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->a:Landroid/view/WindowManager;

    return-object p0
.end method

.method private synthetic i(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/g;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->e:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/g;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/g;->b()I

    move-result v0

    if-lez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->d:Landroid/widget/TextView;

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_security_system_off:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/g;->b()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 6
    :cond_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->d:Landroid/widget/TextView;

    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_close_safe_system_hint:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic k()Lkotlin/v;
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/u;->b(Z)V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/RainModeMgr;->f()V

    .line 3
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_anable_safe:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->ic_safe_ok:I

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/l/a;->d(Ljava/lang/String;I)V

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/f;->f()V

    .line 5
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/h;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/h;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/h;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 6
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method static synthetic l(Landroid/view/View;)V
    .locals 1

    .line 1
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/a;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/a;

    const/4 v0, 0x1

    invoke-static {v0, v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager;->f(ZZLkotlin/jvm/b/a;)V

    return-void
.end method

.method private synthetic m()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "view\u5bbd\u9ad8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "debugXY"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private o()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility",
            "RestrictedApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->c:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$layout;->dialog_msg:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->c:Landroid/view/View;

    .line 3
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->txt_msg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->d:Landroid/widget/TextView;

    .line 4
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_close_safe_system_hint:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->c:Landroid/view/View;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->tv_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->e:Landroid/widget/TextView;

    .line 6
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_open_now:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->c:Landroid/view/View;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->iv_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 8
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->ic_safe_cancel:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->e:Landroid/widget/TextView;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/b;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/b;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 11
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 12
    invoke-virtual {v0, v3, v1}, Landroid/view/View;->measure(II)V

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "view\u5bbd\u9ad8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "debugXY"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->c:Landroid/view/View;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$b;

    invoke-direct {v1, p0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$b;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 15
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->b:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->f:I

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->c:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 16
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->b:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x32

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 17
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->a:Landroid/view/WindowManager;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->c:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->c:Landroid/view/View;

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/d;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic j(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->i(Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/g;)V

    return-void
.end method

.method public synthetic n()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->m()V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "window"

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->a:Landroid/view/WindowManager;

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/utils/o0;->q(Landroid/view/WindowManager;)I

    move-result v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->f:I

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->a:Landroid/view/WindowManager;

    invoke-static {v0}, Lcn/mucang/android/core/utils/o0;->p(Landroid/view/WindowManager;)I

    move-result v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->g:I

    .line 5
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->b:Landroid/view/WindowManager$LayoutParams;

    .line 6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    const/16 v1, 0x7f6

    .line 7
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x7d2

    .line 8
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    :goto_0
    const/4 v1, 0x1

    .line 9
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x33

    .line 10
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x28

    .line 11
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, -0x2

    .line 12
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 13
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 14
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->j:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->a:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->c:Landroid/view/View;

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->j:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 6
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/g;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->i:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    const-string v0, "FloatWindowManager"

    const-string v1, "\u505c\u6b62\u60ac\u6d6e\u7a97"

    .line 7
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->o()V

    .line 2
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/g;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/FloatSafeAlterViewService;->i:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    .line 3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
