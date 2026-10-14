.class public final synthetic Lcn/mucang/android/jiakaoyi/speech/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lkotlin/jvm/b/a;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/b/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/a;->a:Lkotlin/jvm/b/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/a;->a:Lkotlin/jvm/b/a;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->m(Lkotlin/jvm/b/a;)V

    return-void
.end method
