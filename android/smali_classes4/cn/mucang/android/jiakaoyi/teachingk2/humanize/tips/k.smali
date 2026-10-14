.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/k;->a:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/k;->a:Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/humanize/tips/TipsArguments;->a(Lcn/mucang/android/jiakaoyi/teachingk2/humanize/model/VoiceTipsRule;)V

    return-void
.end method
