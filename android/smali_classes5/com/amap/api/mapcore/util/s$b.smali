.class Lcom/amap/api/mapcore/util/s$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/maps/AMap$CommonInfoWindowAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Lcom/amap/api/maps/InfoWindowParams;

.field final synthetic b:Lcom/amap/api/mapcore/util/s;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/s$b;->b:Lcom/amap/api/mapcore/util/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/amap/api/mapcore/util/s$b;->a:Lcom/amap/api/maps/InfoWindowParams;

    return-void
.end method


# virtual methods
.method public getInfoWindowParams(Lcom/amap/api/maps/model/BasePointOverlay;)Lcom/amap/api/maps/InfoWindowParams;
    .locals 3

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/s$b;->a:Lcom/amap/api/maps/InfoWindowParams;

    if-nez p1, :cond_1

    .line 2
    new-instance p1, Lcom/amap/api/maps/InfoWindowParams;

    invoke-direct {p1}, Lcom/amap/api/maps/InfoWindowParams;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/s$b;->a:Lcom/amap/api/maps/InfoWindowParams;

    .line 3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/s$b;->b:Lcom/amap/api/mapcore/util/s;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/s;->a(Lcom/amap/api/mapcore/util/s;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/s$b;->b:Lcom/amap/api/mapcore/util/s;

    iget-object v0, p1, Lcom/amap/api/mapcore/util/s;->h:Landroid/content/Context;

    const-string v1, "infowindow_bg.9.png"

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/g3;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/s;->b(Lcom/amap/api/mapcore/util/s;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/s$b;->b:Lcom/amap/api/mapcore/util/s;

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/s$b;->b:Lcom/amap/api/mapcore/util/s;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/s;->h:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/s;->c(Lcom/amap/api/mapcore/util/s;Landroid/view/View;)Landroid/view/View;

    .line 6
    iget-object p1, p0, Lcom/amap/api/mapcore/util/s$b;->b:Lcom/amap/api/mapcore/util/s;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/s;->n(Lcom/amap/api/mapcore/util/s;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/s$b;->b:Lcom/amap/api/mapcore/util/s;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/s;->a(Lcom/amap/api/mapcore/util/s;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object p1, p0, Lcom/amap/api/mapcore/util/s$b;->b:Lcom/amap/api/mapcore/util/s;

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/s$b;->b:Lcom/amap/api/mapcore/util/s;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/s;->h:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/s;->f(Lcom/amap/api/mapcore/util/s;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 8
    iget-object p1, p0, Lcom/amap/api/mapcore/util/s$b;->b:Lcom/amap/api/mapcore/util/s;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/s;->v(Lcom/amap/api/mapcore/util/s;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "\u6807\u9898"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/amap/api/mapcore/util/s$b;->b:Lcom/amap/api/mapcore/util/s;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/s;->v(Lcom/amap/api/mapcore/util/s;)Landroid/widget/TextView;

    move-result-object p1

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    iget-object p1, p0, Lcom/amap/api/mapcore/util/s$b;->b:Lcom/amap/api/mapcore/util/s;

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/s$b;->b:Lcom/amap/api/mapcore/util/s;

    iget-object v2, v2, Lcom/amap/api/mapcore/util/s;->h:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v1}, Lcom/amap/api/mapcore/util/s;->q(Lcom/amap/api/mapcore/util/s;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 11
    iget-object p1, p0, Lcom/amap/api/mapcore/util/s$b;->b:Lcom/amap/api/mapcore/util/s;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/s;->x(Lcom/amap/api/mapcore/util/s;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 12
    iget-object p1, p0, Lcom/amap/api/mapcore/util/s$b;->b:Lcom/amap/api/mapcore/util/s;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/s;->x(Lcom/amap/api/mapcore/util/s;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "\u5185\u5bb9"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p0, Lcom/amap/api/mapcore/util/s$b;->b:Lcom/amap/api/mapcore/util/s;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/s;->n(Lcom/amap/api/mapcore/util/s;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 14
    iget-object p1, p0, Lcom/amap/api/mapcore/util/s$b;->b:Lcom/amap/api/mapcore/util/s;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/s;->n(Lcom/amap/api/mapcore/util/s;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/s$b;->b:Lcom/amap/api/mapcore/util/s;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/s;->v(Lcom/amap/api/mapcore/util/s;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 15
    iget-object p1, p0, Lcom/amap/api/mapcore/util/s$b;->b:Lcom/amap/api/mapcore/util/s;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/s;->n(Lcom/amap/api/mapcore/util/s;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/s$b;->b:Lcom/amap/api/mapcore/util/s;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/s;->x(Lcom/amap/api/mapcore/util/s;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 16
    iget-object p1, p0, Lcom/amap/api/mapcore/util/s$b;->a:Lcom/amap/api/maps/InfoWindowParams;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/amap/api/maps/InfoWindowParams;->setInfoWindowType(I)V

    .line 17
    iget-object p1, p0, Lcom/amap/api/mapcore/util/s$b;->a:Lcom/amap/api/maps/InfoWindowParams;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/s$b;->b:Lcom/amap/api/mapcore/util/s;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/s;->n(Lcom/amap/api/mapcore/util/s;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/maps/InfoWindowParams;->setInfoWindow(Landroid/view/View;)V

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/s$b;->a:Lcom/amap/api/maps/InfoWindowParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    const-string v0, "InfoWindowDelegate"

    const-string v1, "showInfoWindow decodeDrawableFromAsset"

    .line 19
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method
