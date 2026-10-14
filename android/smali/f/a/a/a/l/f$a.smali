.class Lf/a/a/a/l/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/a/a/a/l/f;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Thread;

.field final synthetic b:Ljava/lang/Throwable;

.field final synthetic c:Lf/a/a/a/l/f;


# direct methods
.method constructor <init>(Lf/a/a/a/l/f;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/a/l/f$a;->c:Lf/a/a/a/l/f;

    iput-object p2, p0, Lf/a/a/a/l/f$a;->a:Ljava/lang/Thread;

    iput-object p3, p0, Lf/a/a/a/l/f$a;->b:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf/a/a/a/l/f$a;->c:Lf/a/a/a/l/f;

    invoke-static {v0}, Lf/a/a/a/l/f;->a(Lf/a/a/a/l/f;)Lf/a/a/a/l/d;

    move-result-object v0

    iget-object v1, p0, Lf/a/a/a/l/f$a;->a:Ljava/lang/Thread;

    iget-object v2, p0, Lf/a/a/a/l/f$a;->b:Ljava/lang/Throwable;

    invoke-interface {v0, v1, v2}, Lf/a/a/a/l/d;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
