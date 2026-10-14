.class final Lcn/mucang/sundial/library/activelistener/TtsActivityActiveListener$onFirstActivityCreated$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activelistener/TtsActivityActiveListener;->onFirstActivityCreated(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lkotlin/v;",
        "run",
        "()V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcn/mucang/sundial/library/activelistener/TtsActivityActiveListener$onFirstActivityCreated$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/sundial/library/activelistener/TtsActivityActiveListener$onFirstActivityCreated$1;

    invoke-direct {v0}, Lcn/mucang/sundial/library/activelistener/TtsActivityActiveListener$onFirstActivityCreated$1;-><init>()V

    sput-object v0, Lcn/mucang/sundial/library/activelistener/TtsActivityActiveListener$onFirstActivityCreated$1;->INSTANCE:Lcn/mucang/sundial/library/activelistener/TtsActivityActiveListener$onFirstActivityCreated$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 1
    invoke-static {}, Lcn/mucang/sundial/library/tts/Tts;->init()V

    return-void
.end method
