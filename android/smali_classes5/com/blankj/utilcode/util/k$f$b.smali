.class Lcom/blankj/utilcode/util/k$f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/k$f;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/blankj/utilcode/util/k$f;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/k$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/blankj/utilcode/util/k$f$b;->a:Lcom/blankj/utilcode/util/k$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/blankj/utilcode/util/k$f$b;->a:Lcom/blankj/utilcode/util/k$f;

    invoke-static {v0}, Lcom/blankj/utilcode/util/k$f;->b(Lcom/blankj/utilcode/util/k$f;)V

    return-void
.end method
