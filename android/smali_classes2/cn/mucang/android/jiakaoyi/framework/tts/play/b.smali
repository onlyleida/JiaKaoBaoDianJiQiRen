.class public final synthetic Lcn/mucang/android/jiakaoyi/framework/tts/play/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/io/File;ILjava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/b;->b:Ljava/io/File;

    iput p3, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/b;->c:I

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/b;->d:Ljava/lang/String;

    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/b;->e:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/b;->a:Ljava/lang/String;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/b;->b:Ljava/io/File;

    iget v2, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/b;->c:I

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/b;->d:Ljava/lang/String;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/b;->e:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    invoke-static {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->j(Ljava/lang/String;Ljava/io/File;ILjava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    return-void
.end method
