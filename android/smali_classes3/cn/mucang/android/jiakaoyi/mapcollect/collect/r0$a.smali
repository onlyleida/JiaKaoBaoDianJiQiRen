.class Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic b:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic c:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$a;->b:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$a;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    const/4 p1, 0x0

    const/16 p2, 0x8

    if-nez p3, :cond_0

    .line 1
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$a;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$a;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p4, 0x1

    if-ne p3, p4, :cond_1

    .line 4
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$a;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$a;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 8
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$a;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 9
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/r0$a;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
