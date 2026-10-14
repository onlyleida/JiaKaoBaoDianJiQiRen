.class Landroidx/fragment/app/b$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/b;->x(Ljava/util/List;Ljava/util/List;ZLandroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/fragment/app/SpecialEffectsController$Operation;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/x;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroidx/fragment/app/b;Landroidx/fragment/app/x;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p2, p0, Landroidx/fragment/app/b$h;->a:Landroidx/fragment/app/x;

    iput-object p3, p0, Landroidx/fragment/app/b$h;->b:Landroid/view/View;

    iput-object p4, p0, Landroidx/fragment/app/b$h;->c:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/fragment/app/b$h;->a:Landroidx/fragment/app/x;

    iget-object v1, p0, Landroidx/fragment/app/b$h;->b:Landroid/view/View;

    iget-object v2, p0, Landroidx/fragment/app/b$h;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/x;->k(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method
