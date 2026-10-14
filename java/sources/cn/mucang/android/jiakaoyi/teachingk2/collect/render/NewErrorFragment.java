package cn.mucang.android.jiakaoyi.teachingk2.collect.render;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.lifecycle.BusLiveData;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseFragment;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import cn.mucang.android.jiakaoyi.teachingk2.data.ErrorModel;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.Variable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.DelayTimeVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.FootBrakeVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.LightVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.TurnHeadVariable;
import cn.mucang.android.jiakaoyi.teachingk2.form.FormModel;
import cn.mucang.android.jiakaoyi.teachingk2.form.model.VoiceModel;
import cn.mucang.android.jiakaoyi.teachingk2.lib.databinding.FragmentCollectErrorsNewBinding;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\tH\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J$\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u001a\u0010\u0019\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\u00122\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u0012\u0010\u001b\u001a\u00020\r2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0006H\u0002J\u0010\u0010\u001d\u001a\u00020\r2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R*\u0010\u0007\u001a\u001e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n0\bj\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n`\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/NewErrorFragment;", "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseFragment;", "()V", "binding", "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/FragmentCollectErrorsNewBinding;", "data", "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;", "viewMap", "Ljava/util/HashMap;", "", "Landroid/widget/CheckBox;", "Lkotlin/collections/HashMap;", "addError", "", "errorType", "getStatName", "", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", TtmlNode.RUBY_CONTAINER, "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "view", "setData", "model", "setDelay", "error", "Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class NewErrorFragment extends BaseFragment {
    private TeachModel b;
    private FragmentCollectErrorsNewBinding c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final HashMap<Integer, CheckBox> f6540d = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: private */
    public final void t(int i) {
        TeachModel teachModel;
        List<ErrorModel> list;
        TeachModel teachModel2;
        List<ErrorModel> list2;
        TeachModel teachModel3;
        List<ErrorModel> list3;
        TeachModel teachModel4;
        List<ErrorModel> list4;
        TeachModel teachModel5;
        List<ErrorModel> list5;
        TeachModel teachModel6;
        List<ErrorModel> list6;
        int i2 = -1;
        if (i == 5 && (teachModel6 = this.b) != null && (list6 = teachModel6.errors) != null) {
            ErrorModel errorModelCreate = ErrorModel.create(5);
            kotlin.jvm.internal.r.d(errorModelCreate, "this");
            x(errorModelCreate);
            FormModel formModel = errorModelCreate.errorForm;
            VoiceModel voiceModel = formModel instanceof VoiceModel ? (VoiceModel) formModel : null;
            if (voiceModel != null) {
                voiceModel.voice = "未开转向灯";
            }
            List<Variable> errorVariables = errorModelCreate.errorVariables;
            kotlin.jvm.internal.r.d(errorVariables, "errorVariables");
            Iterator<Variable> it = errorVariables.iterator();
            int i3 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i3 = -1;
                    break;
                } else if (it.next() instanceof LightVariable) {
                    break;
                } else {
                    i3++;
                }
            }
            errorModelCreate.errorVariables.set(i3, new LightVariable(Light.Off.lightId));
            kotlin.v vVar = kotlin.v.f15822a;
            list6.add(0, errorModelCreate);
        }
        if (i == 6 && (teachModel5 = this.b) != null && (list5 = teachModel5.errors) != null) {
            ErrorModel errorModelCreate2 = ErrorModel.create(6);
            kotlin.jvm.internal.r.d(errorModelCreate2, "this");
            x(errorModelCreate2);
            FormModel formModel2 = errorModelCreate2.errorForm;
            VoiceModel voiceModel2 = formModel2 instanceof VoiceModel ? (VoiceModel) formModel2 : null;
            if (voiceModel2 != null) {
                voiceModel2.voice = "转向灯错误";
            }
            List<Variable> errorVariables2 = errorModelCreate2.errorVariables;
            kotlin.jvm.internal.r.d(errorVariables2, "errorVariables");
            Iterator<Variable> it2 = errorVariables2.iterator();
            int i4 = 0;
            while (true) {
                if (!it2.hasNext()) {
                    i4 = -1;
                    break;
                } else if (it2.next() instanceof LightVariable) {
                    break;
                } else {
                    i4++;
                }
            }
            errorModelCreate2.errorVariables.set(i4, new LightVariable(Light.TurnRightLight.lightId));
            kotlin.v vVar2 = kotlin.v.f15822a;
            list5.add(0, errorModelCreate2);
        }
        if (i == 7 && (teachModel4 = this.b) != null && (list4 = teachModel4.errors) != null) {
            ErrorModel errorModelCreate3 = ErrorModel.create(7);
            kotlin.jvm.internal.r.d(errorModelCreate3, "this");
            x(errorModelCreate3);
            FormModel formModel3 = errorModelCreate3.errorForm;
            VoiceModel voiceModel3 = formModel3 instanceof VoiceModel ? (VoiceModel) formModel3 : null;
            if (voiceModel3 != null) {
                voiceModel3.voice = "未及时刹车";
            }
            List<Variable> errorVariables3 = errorModelCreate3.errorVariables;
            kotlin.jvm.internal.r.d(errorVariables3, "errorVariables");
            Iterator<Variable> it3 = errorVariables3.iterator();
            int i5 = 0;
            while (true) {
                if (!it3.hasNext()) {
                    i5 = -1;
                    break;
                } else if (it3.next() instanceof FootBrakeVariable) {
                    break;
                } else {
                    i5++;
                }
            }
            errorModelCreate3.errorVariables.set(i5, new FootBrakeVariable(true));
            kotlin.v vVar3 = kotlin.v.f15822a;
            list4.add(0, errorModelCreate3);
        }
        if (i == 8 && (teachModel3 = this.b) != null && (list3 = teachModel3.errors) != null) {
            ErrorModel errorModelCreate4 = ErrorModel.create(8);
            kotlin.jvm.internal.r.d(errorModelCreate4, "this");
            x(errorModelCreate4);
            errorModelCreate4.checkType = 1;
            errorModelCreate4.isRightCheck = true;
            FormModel formModel4 = errorModelCreate4.errorForm;
            VoiceModel voiceModel4 = formModel4 instanceof VoiceModel ? (VoiceModel) formModel4 : null;
            if (voiceModel4 != null) {
                voiceModel4.voice = "请按教学往前看";
            }
            List<Variable> errorVariables4 = errorModelCreate4.errorVariables;
            kotlin.jvm.internal.r.d(errorVariables4, "errorVariables");
            Iterator<Variable> it4 = errorVariables4.iterator();
            int i6 = 0;
            while (true) {
                if (!it4.hasNext()) {
                    i6 = -1;
                    break;
                } else if (it4.next() instanceof TurnHeadVariable) {
                    break;
                } else {
                    i6++;
                }
            }
            errorModelCreate4.errorVariables.set(i6, new TurnHeadVariable(0));
            kotlin.v vVar4 = kotlin.v.f15822a;
            list3.add(0, errorModelCreate4);
        }
        if (i == 9 && (teachModel2 = this.b) != null && (list2 = teachModel2.errors) != null) {
            ErrorModel errorModelCreate5 = ErrorModel.create(9);
            kotlin.jvm.internal.r.d(errorModelCreate5, "this");
            x(errorModelCreate5);
            errorModelCreate5.checkType = 1;
            errorModelCreate5.isRightCheck = true;
            FormModel formModel5 = errorModelCreate5.errorForm;
            VoiceModel voiceModel5 = formModel5 instanceof VoiceModel ? (VoiceModel) formModel5 : null;
            if (voiceModel5 != null) {
                voiceModel5.voice = "请按教学指示看左后视镜点位";
            }
            List<Variable> errorVariables5 = errorModelCreate5.errorVariables;
            kotlin.jvm.internal.r.d(errorVariables5, "errorVariables");
            Iterator<Variable> it5 = errorVariables5.iterator();
            int i7 = 0;
            while (true) {
                if (!it5.hasNext()) {
                    i7 = -1;
                    break;
                } else if (it5.next() instanceof TurnHeadVariable) {
                    break;
                } else {
                    i7++;
                }
            }
            errorModelCreate5.errorVariables.set(i7, new TurnHeadVariable(1));
            kotlin.v vVar5 = kotlin.v.f15822a;
            list2.add(0, errorModelCreate5);
        }
        if (i != 10 || (teachModel = this.b) == null || (list = teachModel.errors) == null) {
            return;
        }
        ErrorModel errorModelCreate6 = ErrorModel.create(10);
        kotlin.jvm.internal.r.d(errorModelCreate6, "this");
        x(errorModelCreate6);
        errorModelCreate6.checkType = 1;
        errorModelCreate6.isRightCheck = true;
        FormModel formModel6 = errorModelCreate6.errorForm;
        VoiceModel voiceModel6 = formModel6 instanceof VoiceModel ? (VoiceModel) formModel6 : null;
        if (voiceModel6 != null) {
            voiceModel6.voice = "请按教学指示看右后视镜点位";
        }
        List<Variable> errorVariables6 = errorModelCreate6.errorVariables;
        kotlin.jvm.internal.r.d(errorVariables6, "errorVariables");
        Iterator<Variable> it6 = errorVariables6.iterator();
        int i8 = 0;
        while (it6.hasNext()) {
            if (it6.next() instanceof TurnHeadVariable) {
                i2 = i8;
                break;
            }
            i8++;
        }
        errorModelCreate6.errorVariables.set(i2, new TurnHeadVariable(2));
        kotlin.v vVar6 = kotlin.v.f15822a;
        list.add(0, errorModelCreate6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(NewErrorFragment this$0, f2.f data) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(data, "data");
        this$0.w(data.f6622a);
    }

    private final void w(TeachModel teachModel) {
        List<ErrorModel> list;
        this.b = teachModel;
        if (teachModel == null || (list = teachModel.errors) == null) {
            return;
        }
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            CheckBox checkBox = this.f6540d.get(Integer.valueOf(((ErrorModel) it.next()).errorType));
            if (checkBox != null) {
                checkBox.setChecked(true);
            }
        }
    }

    private final void x(ErrorModel errorModel) {
        List<Variable> list = errorModel.stopVariables;
        kotlin.jvm.internal.r.d(list, "error.stopVariables");
        for (Variable variable : list) {
            if (variable instanceof DelayTimeVariable) {
                ((DelayTimeVariable) variable).delayTime = 3000L;
                return;
            }
        }
    }

    @Override // cn.mucang.android.core.config.t
    public String getStatName() {
        return "错误检测页面2.0";
    }

    @Override // cn.mucang.android.core.config.q, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        kotlin.jvm.internal.r.e(inflater, "inflater");
        FragmentCollectErrorsNewBinding fragmentCollectErrorsNewBindingInflate = FragmentCollectErrorsNewBinding.inflate(inflater);
        kotlin.jvm.internal.r.d(fragmentCollectErrorsNewBindingInflate, "inflate(inflater)");
        this.c = fragmentCollectErrorsNewBindingInflate;
        HashMap<Integer, CheckBox> map = this.f6540d;
        FragmentCollectErrorsNewBinding fragmentCollectErrorsNewBinding = this.c;
        if (fragmentCollectErrorsNewBinding == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        CheckBox checkBox = fragmentCollectErrorsNewBinding.lightOpenCb;
        kotlin.jvm.internal.r.d(checkBox, "binding.lightOpenCb");
        map.put(5, checkBox);
        HashMap<Integer, CheckBox> map2 = this.f6540d;
        FragmentCollectErrorsNewBinding fragmentCollectErrorsNewBinding2 = this.c;
        if (fragmentCollectErrorsNewBinding2 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        CheckBox checkBox2 = fragmentCollectErrorsNewBinding2.lightErrorCb;
        kotlin.jvm.internal.r.d(checkBox2, "binding.lightErrorCb");
        map2.put(6, checkBox2);
        HashMap<Integer, CheckBox> map3 = this.f6540d;
        FragmentCollectErrorsNewBinding fragmentCollectErrorsNewBinding3 = this.c;
        if (fragmentCollectErrorsNewBinding3 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        CheckBox checkBox3 = fragmentCollectErrorsNewBinding3.brakeCb;
        kotlin.jvm.internal.r.d(checkBox3, "binding.brakeCb");
        map3.put(7, checkBox3);
        HashMap<Integer, CheckBox> map4 = this.f6540d;
        FragmentCollectErrorsNewBinding fragmentCollectErrorsNewBinding4 = this.c;
        if (fragmentCollectErrorsNewBinding4 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        CheckBox checkBox4 = fragmentCollectErrorsNewBinding4.leftCb;
        kotlin.jvm.internal.r.d(checkBox4, "binding.leftCb");
        map4.put(9, checkBox4);
        HashMap<Integer, CheckBox> map5 = this.f6540d;
        FragmentCollectErrorsNewBinding fragmentCollectErrorsNewBinding5 = this.c;
        if (fragmentCollectErrorsNewBinding5 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        CheckBox checkBox5 = fragmentCollectErrorsNewBinding5.rightCb;
        kotlin.jvm.internal.r.d(checkBox5, "binding.rightCb");
        map5.put(10, checkBox5);
        HashMap<Integer, CheckBox> map6 = this.f6540d;
        FragmentCollectErrorsNewBinding fragmentCollectErrorsNewBinding6 = this.c;
        if (fragmentCollectErrorsNewBinding6 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        CheckBox checkBox6 = fragmentCollectErrorsNewBinding6.noCb;
        kotlin.jvm.internal.r.d(checkBox6, "binding.noCb");
        map6.put(8, checkBox6);
        for (final Map.Entry<Integer, CheckBox> entry : this.f6540d.entrySet()) {
            cn.mucang.android.jiakaoyi.teachingk2.p0.i(entry.getValue(), new Function1<Boolean, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.NewErrorFragment$onCreateView$1$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ kotlin.v invoke(Boolean bool) {
                    invoke(bool.booleanValue());
                    return kotlin.v.f15822a;
                }

                public final void invoke(boolean z) {
                    List<ErrorModel> list;
                    TeachModel teachModel;
                    List<ErrorModel> list2;
                    Iterator<ErrorModel> it = null;
                    it = null;
                    if (!z) {
                        TeachModel teachModel2 = this.this$0.b;
                        if (teachModel2 != null && (list = teachModel2.errors) != null) {
                            it = list.iterator();
                        }
                        if (it == null) {
                            return;
                        }
                        while (it.hasNext()) {
                            if (it.next().errorType == entry.getKey().intValue()) {
                                it.remove();
                            }
                        }
                        return;
                    }
                    TeachModel teachModel3 = this.this$0.b;
                    if (teachModel3 != null && (list2 = teachModel3.errors) != null) {
                        Map.Entry<Integer, CheckBox> entry2 = entry;
                        Iterator<T> it2 = list2.iterator();
                        while (it2.hasNext()) {
                            if (((ErrorModel) it2.next()).errorType == entry2.getKey().intValue()) {
                                return;
                            }
                        }
                    }
                    TeachModel teachModel4 = this.this$0.b;
                    if ((teachModel4 != null ? teachModel4.errors : null) == null && (teachModel = this.this$0.b) != null) {
                        teachModel.errors = new ArrayList();
                    }
                    this.this$0.t(entry.getKey().intValue());
                }
            });
        }
        FragmentCollectErrorsNewBinding fragmentCollectErrorsNewBinding7 = this.c;
        if (fragmentCollectErrorsNewBinding7 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        ConstraintLayout root = fragmentCollectErrorsNewBinding7.getRoot();
        kotlin.jvm.internal.r.d(root, "binding.root");
        return root;
    }

    @Override // cn.mucang.android.core.config.q, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        kotlin.jvm.internal.r.e(view, "view");
        super.onViewCreated(view, savedInstanceState);
        BusLiveData busLiveDataD = LiveBus.d(f2.f.class);
        androidx.lifecycle.r viewLifecycleOwner = getViewLifecycleOwner();
        kotlin.jvm.internal.r.d(viewLifecycleOwner, "viewLifecycleOwner");
        busLiveDataD.h(viewLifecycleOwner, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.t1
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                NewErrorFragment.v(this.f6691a, (f2.f) obj);
            }
        });
    }
}
