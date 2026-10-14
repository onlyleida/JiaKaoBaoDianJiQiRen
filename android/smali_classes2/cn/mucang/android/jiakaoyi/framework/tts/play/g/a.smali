.class public final synthetic Lcn/mucang/android/jiakaoyi/framework/tts/play/g/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/a;->a:Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/a;->a:Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;

    invoke-virtual {v0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/d;->g(Landroid/media/MediaPlayer;II)Z

    move-result p1

    return p1
.end method
