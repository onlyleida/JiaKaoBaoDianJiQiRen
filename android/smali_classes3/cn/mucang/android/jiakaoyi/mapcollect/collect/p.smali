.class public final synthetic Lcn/mucang/android/jiakaoyi/mapcollect/collect/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/p;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    iput p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/p;->b:I

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/p;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/p;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/p;->b:I

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/p;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;->u(ILjava/lang/Runnable;Landroid/content/DialogInterface;I)V

    return-void
.end method
