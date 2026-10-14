.class public Lnet/lucode/hackware/magicindicator/e/c/e/a;
.super Lnet/lucode/hackware/magicindicator/e/c/e/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lnet/lucode/hackware/magicindicator/e/c/e/b;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onDeselected(II)V
    .locals 0

    return-void
.end method

.method public onEnter(IIFZ)V
    .locals 0

    .line 1
    iget p1, p0, Lnet/lucode/hackware/magicindicator/e/c/e/b;->mNormalColor:I

    iget p2, p0, Lnet/lucode/hackware/magicindicator/e/c/e/b;->mSelectedColor:I

    invoke-static {p3, p1, p2}, Lnet/lucode/hackware/magicindicator/e/a;->a(FII)I

    move-result p1

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public onLeave(IIFZ)V
    .locals 0

    .line 1
    iget p1, p0, Lnet/lucode/hackware/magicindicator/e/c/e/b;->mSelectedColor:I

    iget p2, p0, Lnet/lucode/hackware/magicindicator/e/c/e/b;->mNormalColor:I

    invoke-static {p3, p1, p2}, Lnet/lucode/hackware/magicindicator/e/a;->a(FII)I

    move-result p1

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public onSelected(II)V
    .locals 0

    return-void
.end method
