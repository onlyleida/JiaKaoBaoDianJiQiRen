.class public final synthetic Lcn/mucang/jiakaoyi/sundial/client/view/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/sundial/client/view/DraggableView;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/sundial/client/view/DraggableView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/sundial/client/view/a;->a:Lcn/mucang/jiakaoyi/sundial/client/view/DraggableView;

    iput p2, p0, Lcn/mucang/jiakaoyi/sundial/client/view/a;->b:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/client/view/a;->a:Lcn/mucang/jiakaoyi/sundial/client/view/DraggableView;

    iget v1, p0, Lcn/mucang/jiakaoyi/sundial/client/view/a;->b:I

    invoke-static {v0, v1, p1}, Lcn/mucang/jiakaoyi/sundial/client/view/DraggableView;->a(Lcn/mucang/jiakaoyi/sundial/client/view/DraggableView;ILandroid/animation/ValueAnimator;)V

    return-void
.end method
