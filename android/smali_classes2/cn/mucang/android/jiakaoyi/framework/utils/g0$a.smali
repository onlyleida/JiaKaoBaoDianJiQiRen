.class final Lcn/mucang/android/jiakaoyi/framework/utils/g0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/framework/utils/g0;->c(ILcn/mucang/android/jiakaoyi/framework/h/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/framework/h/b;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/g0$a;->a:Lcn/mucang/android/jiakaoyi/framework/h/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/g0;->a()Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/g0;->b(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/utils/g0$a;->a:Lcn/mucang/android/jiakaoyi/framework/h/b;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    return-void
.end method
