.class public final Lcn/mucang/sundial/library/widget/TTPagerTitleView;
.super Lnet/lucode/hackware/magicindicator/e/c/e/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001f\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001f\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lcn/mucang/sundial/library/widget/TTPagerTitleView;",
        "Lnet/lucode/hackware/magicindicator/e/c/e/a;",
        "",
        "index",
        "totalCount",
        "Lkotlin/v;",
        "onSelected",
        "(II)V",
        "onDeselected",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lnet/lucode/hackware/magicindicator/e/c/e/a;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x13

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public onDeselected(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lnet/lucode/hackware/magicindicator/e/c/e/a;->onDeselected(II)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void
.end method

.method public onSelected(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lnet/lucode/hackware/magicindicator/e/c/e/a;->onSelected(II)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void
.end method
