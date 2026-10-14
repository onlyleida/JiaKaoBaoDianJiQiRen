.class public final synthetic Lcn/mucang/android/facelib/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lorg/opencv/core/Rect;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lorg/opencv/core/Rect;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/facelib/d;->a:Lorg/opencv/core/Rect;

    iput p2, p0, Lcn/mucang/android/facelib/d;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/facelib/d;->a:Lorg/opencv/core/Rect;

    iget v1, p0, Lcn/mucang/android/facelib/d;->b:I

    invoke-static {v0, v1}, Lcn/mucang/android/facelib/FaceLoginManager$a;->k(Lorg/opencv/core/Rect;I)V

    return-void
.end method
