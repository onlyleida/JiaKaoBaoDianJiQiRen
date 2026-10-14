.class Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/h;-><init>(Landroid/app/Activity;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

.field final synthetic b:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/h;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/h$a;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/h$a;->b:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/h$a;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/h$a;->b:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->l()D

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/h$a;->b:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->f()D

    move-result-wide v2

    .line 4
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/h$a;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-static {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->a(DDLcn/mucang/android/jiakaoyi/hpmap/view/MapView;)F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, v1

    invoke-virtual {v4, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setCurrentZoom(F)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/h$a;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/h$a;->b:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    const-wide v3, -0x3fa9800000000000L    # -90.0

    sub-double/2addr v3, v1

    double-to-float v1, v3

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setCurrentRotateDegrees(F)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/h$a;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/y0/h$a;->b:Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v2, v2

    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v1, v3

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->i(FF)V

    return-void
.end method
