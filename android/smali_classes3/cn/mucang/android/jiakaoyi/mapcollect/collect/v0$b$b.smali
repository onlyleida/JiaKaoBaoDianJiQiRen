.class Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b$b;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b$b;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;->f:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;->f(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;)Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->R(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b$b;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0$b;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
