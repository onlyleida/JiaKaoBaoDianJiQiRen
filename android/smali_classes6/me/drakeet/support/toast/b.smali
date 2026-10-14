.class final Lme/drakeet/support/toast/b;
.super Landroid/content/ContextWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/drakeet/support/toast/b$c;,
        Lme/drakeet/support/toast/b$b;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/Toast;

.field private b:Lme/drakeet/support/toast/a;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/widget/Toast;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lme/drakeet/support/toast/b;->a:Landroid/widget/Toast;

    return-void
.end method

.method static synthetic a(Lme/drakeet/support/toast/b;)Lme/drakeet/support/toast/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lme/drakeet/support/toast/b;->b:Lme/drakeet/support/toast/a;

    return-object p0
.end method

.method static synthetic b(Lme/drakeet/support/toast/b;)Landroid/widget/Toast;
    .locals 0

    .line 1
    iget-object p0, p0, Lme/drakeet/support/toast/b;->a:Landroid/widget/Toast;

    return-object p0
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 3

    .line 1
    new-instance v0, Lme/drakeet/support/toast/b$b;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lme/drakeet/support/toast/b$b;-><init>(Lme/drakeet/support/toast/b;Landroid/content/Context;Lme/drakeet/support/toast/b$a;)V

    return-object v0
.end method
