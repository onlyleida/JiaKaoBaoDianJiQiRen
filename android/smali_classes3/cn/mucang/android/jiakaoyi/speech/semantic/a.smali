.class public final synthetic Lcn/mucang/android/jiakaoyi/speech/semantic/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcn/mucang/android/jiakaoyi/speech/d/c;

.field public final synthetic d:Lcn/mucang/android/jiakaoyi/speech/semantic/d;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/speech/d/c;Lcn/mucang/android/jiakaoyi/speech/semantic/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/semantic/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/speech/semantic/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/speech/semantic/a;->c:Lcn/mucang/android/jiakaoyi/speech/d/c;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/speech/semantic/a;->d:Lcn/mucang/android/jiakaoyi/speech/semantic/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/semantic/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/speech/semantic/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/speech/semantic/a;->c:Lcn/mucang/android/jiakaoyi/speech/d/c;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/speech/semantic/a;->d:Lcn/mucang/android/jiakaoyi/speech/semantic/d;

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/speech/semantic/d;->e(Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/speech/d/c;Lcn/mucang/android/jiakaoyi/speech/semantic/d;)V

    return-void
.end method
