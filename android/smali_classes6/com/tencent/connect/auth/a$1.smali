.class Lcom/tencent/connect/auth/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/connect/auth/a;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/connect/auth/a;


# direct methods
.method constructor <init>(Lcom/tencent/connect/auth/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/connect/auth/a$1;->a:Lcom/tencent/connect/auth/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/tencent/connect/auth/a$1;->a:Lcom/tencent/connect/auth/a;

    invoke-virtual {p1}, Lcom/tencent/connect/auth/a;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/tencent/connect/auth/a$1;->a:Lcom/tencent/connect/auth/a;

    invoke-static {p1}, Lcom/tencent/connect/auth/a;->c(Lcom/tencent/connect/auth/a;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/connect/auth/a$1;->a:Lcom/tencent/connect/auth/a;

    invoke-static {p1}, Lcom/tencent/connect/auth/a;->f(Lcom/tencent/connect/auth/a;)Lcom/tencent/connect/auth/a$b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/tencent/connect/auth/a$1;->a:Lcom/tencent/connect/auth/a;

    invoke-static {p1}, Lcom/tencent/connect/auth/a;->f(Lcom/tencent/connect/auth/a;)Lcom/tencent/connect/auth/a$b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/connect/auth/a$b;->onCancel()V

    :cond_0
    return-void
.end method
