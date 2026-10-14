.class public final synthetic Lcn/mucang/jiakaoyi/sundial/service/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/sundial/library/tts/SpeakListener;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/sundial/library/tts/SpeakListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/sundial/service/a;->a:Lcn/mucang/sundial/library/tts/SpeakListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/service/a;->a:Lcn/mucang/sundial/library/tts/SpeakListener;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/sundial/service/d$a;->a(Lcn/mucang/sundial/library/tts/SpeakListener;)V

    return-void
.end method
