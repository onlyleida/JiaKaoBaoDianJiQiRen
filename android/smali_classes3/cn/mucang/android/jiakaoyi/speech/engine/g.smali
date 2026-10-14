.class public final synthetic Lcn/mucang/android/jiakaoyi/speech/engine/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;IZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/g;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    iput p2, p0, Lcn/mucang/android/jiakaoyi/speech/engine/g;->b:I

    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/speech/engine/g;->c:Z

    iput-boolean p4, p0, Lcn/mucang/android/jiakaoyi/speech/engine/g;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/g;->a:Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/g;->b:I

    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/speech/engine/g;->c:Z

    iget-boolean v3, p0, Lcn/mucang/android/jiakaoyi/speech/engine/g;->d:Z

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;->b0(Lcn/mucang/android/jiakaoyi/speech/engine/SpeechEngine;IZZ)V

    return-void
.end method
