.class public final synthetic Lcn/mucang/android/jiakaoyi/speech/engine/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/e;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    iput p2, p0, Lcn/mucang/android/jiakaoyi/speech/engine/e;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/e;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/e;->b:I

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->Z(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;I)V

    return-void
.end method
