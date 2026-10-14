.class Lnet/lucode/hackware/magicindicator/e/c/a$a;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/lucode/hackware/magicindicator/e/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/lucode/hackware/magicindicator/e/c/a;


# direct methods
.method constructor <init>(Lnet/lucode/hackware/magicindicator/e/c/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/e/c/a$a;->a:Lnet/lucode/hackware/magicindicator/e/c/a;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a$a;->a:Lnet/lucode/hackware/magicindicator/e/c/a;

    invoke-static {v0}, Lnet/lucode/hackware/magicindicator/e/c/a;->access$100(Lnet/lucode/hackware/magicindicator/e/c/a;)Lnet/lucode/hackware/magicindicator/b;

    move-result-object v0

    iget-object v1, p0, Lnet/lucode/hackware/magicindicator/e/c/a$a;->a:Lnet/lucode/hackware/magicindicator/e/c/a;

    invoke-static {v1}, Lnet/lucode/hackware/magicindicator/e/c/a;->access$000(Lnet/lucode/hackware/magicindicator/e/c/a;)Lnet/lucode/hackware/magicindicator/e/c/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lnet/lucode/hackware/magicindicator/e/c/b/a;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/b;->m(I)V

    .line 2
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a$a;->a:Lnet/lucode/hackware/magicindicator/e/c/a;

    invoke-static {v0}, Lnet/lucode/hackware/magicindicator/e/c/a;->access$200(Lnet/lucode/hackware/magicindicator/e/c/a;)V

    return-void
.end method

.method public onInvalidated()V
    .locals 0

    return-void
.end method
