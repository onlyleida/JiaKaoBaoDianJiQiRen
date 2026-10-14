.class Lcn/mucang/android/selectcity/b0/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/selectcity/b0/a;->C()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/selectcity/b0/a;


# direct methods
.method constructor <init>(Lcn/mucang/android/selectcity/b0/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/selectcity/b0/a$c;->a:Lcn/mucang/android/selectcity/b0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcn/mucang/android/selectcity/b0/a$c;->a:Lcn/mucang/android/selectcity/b0/a;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 3
    iget-object p2, p0, Lcn/mucang/android/selectcity/b0/a$c;->a:Lcn/mucang/android/selectcity/b0/a;

    invoke-static {p2}, Lcn/mucang/android/selectcity/b0/a;->y(Lcn/mucang/android/selectcity/b0/a;)Lcn/mucang/android/selectcity/z/d;

    move-result-object p2

    invoke-virtual {p2, p3}, Lf/a/a/e/a/b/b;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "selected_city"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object p2, p0, Lcn/mucang/android/selectcity/b0/a$c;->a:Lcn/mucang/android/selectcity/b0/a;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object p2

    const/4 p3, -0x1

    invoke-virtual {p2, p3, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 6
    iget-object p1, p0, Lcn/mucang/android/selectcity/b0/a$c;->a:Lcn/mucang/android/selectcity/b0/a;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
