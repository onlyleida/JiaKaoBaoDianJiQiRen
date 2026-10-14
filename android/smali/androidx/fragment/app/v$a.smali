.class Landroidx/fragment/app/v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/v;->o(Landroid/view/ViewGroup;Landroidx/fragment/app/v$h;Landroid/view/View;Landroidx/collection/a;Landroidx/fragment/app/v$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/v$g;

.field final synthetic b:Landroidx/fragment/app/Fragment;

.field final synthetic c:Landroidx/core/os/b;


# direct methods
.method constructor <init>(Landroidx/fragment/app/v$g;Landroidx/fragment/app/Fragment;Landroidx/core/os/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/v$a;->a:Landroidx/fragment/app/v$g;

    iput-object p2, p0, Landroidx/fragment/app/v$a;->b:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Landroidx/fragment/app/v$a;->c:Landroidx/core/os/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/v$a;->a:Landroidx/fragment/app/v$g;

    iget-object v1, p0, Landroidx/fragment/app/v$a;->b:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Landroidx/fragment/app/v$a;->c:Landroidx/core/os/b;

    invoke-interface {v0, v1, v2}, Landroidx/fragment/app/v$g;->a(Landroidx/fragment/app/Fragment;Landroidx/core/os/b;)V

    return-void
.end method
