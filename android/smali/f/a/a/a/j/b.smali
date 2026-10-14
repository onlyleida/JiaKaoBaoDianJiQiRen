.class public Lf/a/a/a/j/b;
.super Landroid/app/Fragment;
.source "SourceFile"


# instance fields
.field private a:Lf/a/a/a/j/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lf/a/a/a/j/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/a/j/b;->a:Lf/a/a/a/j/c;

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/a/j/b;->a:Lf/a/a/a/j/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lf/a/a/a/j/c;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lf/a/a/a/j/b;->a:Lf/a/a/a/j/c;

    :cond_0
    return-void
.end method
