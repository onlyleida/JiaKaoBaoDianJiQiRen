.class Lcom/iflytek/cloud/ui/b/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/cloud/ui/b/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/ui/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/cloud/ui/b/c;


# direct methods
.method constructor <init>(Lcom/iflytek/cloud/ui/b/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/iflytek/cloud/ui/b/c$a;->a:Lcom/iflytek/cloud/ui/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/ui/b/c$a;->a:Lcom/iflytek/cloud/ui/b/c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/ui/b/c;->dismiss()V

    return-void
.end method
