.class public abstract Lf/a/a/e/a/b/a;
.super Lf/a/a/e/a/b/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lcn/mucang/android/ui/framework/mvp/BaseModel;",
        ">",
        "Lf/a/a/e/a/b/b<",
        "TM;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field protected static final b:I

.field protected static final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/framework/core/R$id;->ui_framework__card_presenter:I

    sput v0, Lf/a/a/e/a/b/a;->b:I

    .line 2
    sget v0, Lcn/mucang/android/framework/core/R$id;->ui_framework__card_type:I

    sput v0, Lf/a/a/e/a/b/a;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/a/a/e/a/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected b(Lcn/mucang/android/ui/framework/mvp/a;Lcn/mucang/android/ui/framework/mvp/BaseModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/ui/framework/mvp/a;",
            "TM;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/ui/framework/mvp/a;->g()V

    .line 2
    invoke-virtual {p1, p2}, Lcn/mucang/android/ui/framework/mvp/a;->a(Lcn/mucang/android/ui/framework/mvp/BaseModel;)V

    return-void
.end method

.method protected abstract c(Landroid/view/View;I)Lcn/mucang/android/ui/framework/mvp/a;
.end method

.method protected abstract d(Landroid/view/ViewGroup;I)Lcn/mucang/android/ui/framework/mvp/b;
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lf/a/a/e/a/b/b;->getCount()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v0

    :goto_0
    if-eqz p2, :cond_1

    .line 4
    sget v1, Lf/a/a/e/a/b/a;->c:I

    invoke-virtual {p2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p2, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    .line 6
    :goto_1
    instance-of v2, p2, Lcn/mucang/android/ui/framework/mvp/b;

    if-eqz v2, :cond_2

    if-ne v0, v1, :cond_2

    .line 7
    check-cast p2, Lcn/mucang/android/ui/framework/mvp/b;

    .line 8
    invoke-interface {p2}, Lcn/mucang/android/ui/framework/mvp/b;->getView()Landroid/view/View;

    move-result-object p2

    .line 9
    sget p3, Lf/a/a/e/a/b/a;->b:I

    invoke-virtual {p2, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/ui/framework/mvp/a;

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {p0, p3, v0}, Lf/a/a/e/a/b/a;->d(Landroid/view/ViewGroup;I)Lcn/mucang/android/ui/framework/mvp/b;

    move-result-object p2

    .line 11
    invoke-interface {p2}, Lcn/mucang/android/ui/framework/mvp/b;->getView()Landroid/view/View;

    move-result-object p2

    .line 12
    invoke-virtual {p0, p2, v0}, Lf/a/a/e/a/b/a;->c(Landroid/view/View;I)Lcn/mucang/android/ui/framework/mvp/a;

    move-result-object p3

    .line 13
    sget v1, Lf/a/a/e/a/b/a;->b:I

    invoke-virtual {p2, v1, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 14
    sget v1, Lf/a/a/e/a/b/a;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 15
    :goto_2
    invoke-virtual {p0, p1}, Lf/a/a/e/a/b/b;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/ui/framework/mvp/BaseModel;

    invoke-virtual {p0, p3, p1}, Lf/a/a/e/a/b/a;->b(Lcn/mucang/android/ui/framework/mvp/a;Lcn/mucang/android/ui/framework/mvp/BaseModel;)V

    return-object p2
.end method
