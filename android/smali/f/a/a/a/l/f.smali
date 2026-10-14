.class public Lf/a/a/a/l/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lf/a/a/a/l/d;

.field private c:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private d:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lf/a/a/a/l/d;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/a/a/a/l/f;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lf/a/a/a/l/f;->b:Lf/a/a/a/l/d;

    .line 4
    iput-object p3, p0, Lf/a/a/a/l/f;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lf/a/a/a/l/f;->d:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic a(Lf/a/a/a/l/f;)Lf/a/a/a/l/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/a/a/a/l/f;->b:Lf/a/a/a/l/d;

    return-object p0
.end method

.method static synthetic b(Lf/a/a/a/l/f;Ljava/lang/Throwable;Ljava/lang/Thread;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lf/a/a/a/l/f;->f(Ljava/lang/Throwable;Ljava/lang/Thread;)V

    return-void
.end method

.method static synthetic c(Lf/a/a/a/l/f;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lf/a/a/a/l/f;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lf/a/a/a/l/f;)Ljava/lang/Thread;
    .locals 0

    .line 1
    iget-object p0, p0, Lf/a/a/a/l/f;->d:Ljava/lang/Thread;

    return-object p0
.end method

.method private e(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/a/a/a/l/f;->a:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string v1, "\u51fa\u9519\u4e86"

    .line 2
    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method

.method private f(Ljava/lang/Throwable;Ljava/lang/Thread;)V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 3
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 4
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 5
    new-instance p1, Landroidx/appcompat/app/c$a;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p1, v1}, Landroidx/appcompat/app/c$a;-><init>(Landroid/content/Context;)V

    const-string v1, "\u63d0\u793a"

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/c$a;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/c$a;->setCancelable(Z)Landroidx/appcompat/app/c$a;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f88\u62b1\u6b49\uff0c\u5f53\u524d\u7a0b\u5e8f\u51fa\u73b0\u5f02\u5e38\uff1a\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/c$a;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    new-instance v1, Lf/a/a/a/l/f$d;

    invoke-direct {v1, p0, p2}, Lf/a/a/a/l/f$d;-><init>(Lf/a/a/a/l/f;Ljava/lang/Thread;)V

    const-string v2, "\u5173\u95ed"

    .line 7
    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/app/c$a;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    new-instance v1, Lf/a/a/a/l/f$c;

    invoke-direct {v1, p0, v0, p2}, Lf/a/a/a/l/f$c;-><init>(Lf/a/a/a/l/f;Ljava/io/StringWriter;Ljava/lang/Thread;)V

    const-string p2, "\u590d\u5236\u5f02\u5e38\u4fe1\u606f"

    .line 8
    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/app/c$a;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/c$a;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroidx/appcompat/app/c$a;->create()Landroidx/appcompat/app/c;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 11
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lf/a/a/a/l/f$a;

    invoke-direct {v1, p0, p1, p2}, Lf/a/a/a/l/f$a;-><init>(Lf/a/a/a/l/f;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u9ed8\u8ba4\u66ff\u6362"

    .line 4
    invoke-static {v0, p2}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    iget-object v0, p0, Lf/a/a/a/l/f;->d:Ljava/lang/Thread;

    if-ne v0, p1, :cond_1

    .line 6
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lf/a/a/a/l/f$b;

    invoke-direct {v1, p0, p2, p1}, Lf/a/a/a/l/f$b;-><init>(Lf/a/a/a/l/f;Ljava/lang/Throwable;Ljava/lang/Thread;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 7
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p2}, Lf/a/a/a/l/e;->c(Ljava/lang/Throwable;)V

    .line 9
    iget-object v0, p0, Lf/a/a/a/l/f;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
