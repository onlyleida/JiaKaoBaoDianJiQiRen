.class Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity$c;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity$c;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->m(Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getMeasuredHeight()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity$c;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->m(Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setDropDownVerticalOffset(I)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity$c;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->m(Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
