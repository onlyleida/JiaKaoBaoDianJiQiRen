.class public final Lf/a/a/a/r/e$a;
.super Landroid/os/FileObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/a/r/e;-><init>(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "cn/mucang/android/core/storage/ShareMultiProcessStorage$observer$1",
        "Landroid/os/FileObserver;",
        "onEvent",
        "",
        "event",
        "",
        "path",
        "",
        "core-lib_release"
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
.field final synthetic a:Lf/a/a/a/r/e;


# direct methods
.method constructor <init>(Lf/a/a/a/r/e;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lf/a/a/a/r/e$a;->a:Lf/a/a/a/r/e;

    .line 1
    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf/a/a/a/r/e$a;->a:Lf/a/a/a/r/e;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lf/a/a/a/r/e;->c(Lf/a/a/a/r/e;Z)Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lf/a/a/a/r/e$a;->a:Lf/a/a/a/r/e;

    invoke-static {p1}, Lf/a/a/a/r/e;->e(Lf/a/a/a/r/e;)Lf/a/a/a/r/i;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lf/a/a/a/r/e$a;->a:Lf/a/a/a/r/e;

    invoke-static {p2}, Lf/a/a/a/r/e;->d(Lf/a/a/a/r/e;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lf/a/a/a/r/i;->a(Ljava/lang/String;)V

    .line 3
    :goto_0
    iget-object p1, p0, Lf/a/a/a/r/e$a;->a:Lf/a/a/a/r/e;

    invoke-static {p1}, Lf/a/a/a/r/e;->d(Lf/a/a/a/r/e;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "file changed,new content:"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lf/a/a/a/r/e;->f(Lf/a/a/a/r/e;Ljava/lang/String;)V

    return-void
.end method
