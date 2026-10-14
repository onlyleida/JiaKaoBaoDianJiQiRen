package cn.mucang.android.jiakaoyi.signal.d;

import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.signal.ai.AIDMSResult;
import cn.mucang.android.jiakaoyi.signal.ai.AIDriveActionResult;
import cn.mucang.android.jiakaoyi.signal.ai.AIErrorModel;
import cn.mucang.android.jiakaoyi.signal.ai.AIFaceCoverModel;
import cn.mucang.android.jiakaoyi.signal.ai.AIFaceResult;
import cn.mucang.android.jiakaoyi.signal.ai.AIHeadPoseResult;
import cn.mucang.android.jiakaoyi.signal.ai.AIModuleResult;
import cn.mucang.android.jiakaoyi.signal.ai.AIOtaMsgResult;
import cn.mucang.android.jiakaoyi.signal.ai.AIOtaVerResult;
import cn.mucang.android.jiakaoyi.signal.ai.AIRecognitionModel;
import cn.mucang.android.jiakaoyi.signal.ai.AISitPoseResult;
import cn.mucang.android.jiakaoyi.signal.communicate.r;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.l;

/* JADX INFO: loaded from: classes3.dex */
public class f {
    private final cn.mucang.android.jiakaoyi.signal.com.heartbeat.a b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public volatile boolean f5549a = false;
    private int c = 1;

    public f(cn.mucang.android.jiakaoyi.signal.com.heartbeat.a aVar) {
        this.b = aVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public boolean e(AIRecognitionModel aIRecognitionModel, cn.mucang.android.jiakaoyi.signal.center.model.d dVar) {
        cn.mucang.android.jiakaoyi.signal.ai.a aVarA = dVar.a();
        if (aIRecognitionModel instanceof AIDMSResult) {
            aVarA.f5208a = ((AIDMSResult) aIRecognitionModel).getActionCode();
        }
        if (aIRecognitionModel instanceof AIDriveActionResult) {
            aVarA.b = ((AIDriveActionResult) aIRecognitionModel).getHandType();
        }
        if (aIRecognitionModel instanceof AIFaceResult) {
            aVarA.c = ((AIFaceResult) aIRecognitionModel).getEmotion();
        }
        if (aIRecognitionModel instanceof AIHeadPoseResult) {
            aVarA.f5209d = ((AIHeadPoseResult) aIRecognitionModel).getHeadPose();
        }
        if (aIRecognitionModel instanceof AIErrorModel) {
            aVarA.f5210e = ((AIErrorModel) aIRecognitionModel).errorCode;
        }
        if (aIRecognitionModel instanceof AIModuleResult) {
            aVarA.f5211f = ((AIModuleResult) aIRecognitionModel).module;
        }
        if (aIRecognitionModel instanceof AISitPoseResult) {
            aVarA.f5212g = (AISitPoseResult) aIRecognitionModel;
        }
        dVar.d().M = (byte) 1;
        return true;
    }

    private void c(final AIRecognitionModel aIRecognitionModel) {
        cn.mucang.android.jiakaoyi.signal.c.d.v(new cn.mucang.android.jiakaoyi.signal.c.d.a() { // from class: cn.mucang.android.jiakaoyi.signal.d.a
            @Override // cn.mucang.android.jiakaoyi.signal.c.d.a
            public final boolean a(cn.mucang.android.jiakaoyi.signal.center.model.d dVar) {
                return this.f5544a.e(aIRecognitionModel, dVar);
            }
        }, false);
    }

    private void h(int i, r rVar) {
        try {
            byte bE = rVar.e();
            if (i != 160) {
                if (i == 162) {
                    if (bE == 1) {
                        rVar.e();
                        LiveBus.c(new AIOtaMsgResult(rVar.o(), null));
                    } else if (bE == 3) {
                        LiveBus.c(new AIOtaVerResult(rVar));
                    }
                }
            } else if (bE == 1) {
                rVar.e();
                c(new AIFaceResult(rVar.o()));
            } else if (bE == 2) {
                rVar.e();
                c(new AIHeadPoseResult(rVar.o()));
            } else if (bE == 3) {
                rVar.e();
                c(new AIDriveActionResult(rVar.o()));
            } else if (bE == 4) {
                rVar.e();
                c(new AIDMSResult(rVar.o()));
            } else if (bE == 16) {
                rVar.e();
                c(new AIErrorModel(rVar.o()));
            }
        } catch (Exception e2) {
            t.d("AISignalHandler", "类型:" + i + " dispatchHandler异常" + e2.getLocalizedMessage());
        }
    }

    private void i(int i, r rVar) {
        if (i == 162) {
            this.b.f(rVar.j());
        }
        if (i == 165) {
            LiveBus.d(cn.mucang.android.jiakaoyi.signal.ai.c.class).l(new cn.mucang.android.jiakaoyi.signal.ai.c(i, rVar));
            return;
        }
        if (i == 167) {
            LiveBus.d(cn.mucang.android.jiakaoyi.signal.ai.g.class).l(new cn.mucang.android.jiakaoyi.signal.ai.g(i, rVar));
            return;
        }
        if (i == 169) {
            LiveBus.d(cn.mucang.android.jiakaoyi.signal.ai.f.class).l(new cn.mucang.android.jiakaoyi.signal.ai.f(i, rVar));
            return;
        }
        if (i == 171) {
            LiveBus.d(cn.mucang.android.jiakaoyi.signal.ai.d.class).l(new cn.mucang.android.jiakaoyi.signal.ai.d(i, rVar));
            return;
        }
        if (i == 173) {
            LiveBus.d(cn.mucang.android.jiakaoyi.signal.ai.e.class).l(new cn.mucang.android.jiakaoyi.signal.ai.e(i, rVar));
            return;
        }
        if (i == 185) {
            c(new AISitPoseResult(rVar.o(), rVar.o()));
            return;
        }
        if (i == 188) {
            LiveBus.c(new cn.mucang.android.jiakaoyi.signal.ai.b(i, rVar));
            return;
        }
        if (i == 189) {
            LiveBus.c(new AIFaceCoverModel(rVar.o()));
            return;
        }
        switch (i) {
            case 176:
                AIOtaMsgResult aIOtaMsgResult = new AIOtaMsgResult(rVar.o(), new String(rVar.g(rVar.j())));
                this.f5549a = this.f5549a || aIOtaMsgResult.msg == 4;
                if (this.f5549a) {
                    System.currentTimeMillis();
                }
                LiveBus.d(AIOtaMsgResult.class).l(aIOtaMsgResult);
                break;
            case 177:
                c(new AIFaceResult(rVar.o()));
                break;
            case 178:
                c(new AIHeadPoseResult(rVar.o()));
                break;
            case l.Receive_Ai_Hand_Result /* 179 */:
                c(new AIDriveActionResult(rVar.o()));
                break;
            case 180:
                c(new AIDMSResult(rVar.o()));
                break;
            case 181:
                c(new AIModuleResult(rVar.o()));
                break;
            case 182:
                c(new AIErrorModel(rVar.o()));
                break;
        }
    }

    public void a(int i, r rVar) {
        int i2 = this.c;
        if (i2 == 1) {
            h(i, rVar);
        } else if (i2 != 2) {
            cn.mucang.android.jiakaoyi.framework.log.f.f("没有设置版本");
        } else {
            i(i, rVar);
        }
    }

    public void f() {
        this.f5549a = false;
    }

    public void g(int i) {
        this.c = i;
        cn.mucang.android.jiakaoyi.signal.ai.h.a.c(i);
    }
}
