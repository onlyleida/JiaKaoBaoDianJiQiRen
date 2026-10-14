package cn.mucang.android.framework.core.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.viewbinding.a;
import cn.mucang.android.framework.core.R;

/* JADX INFO: loaded from: classes.dex */
public final class CoreYourBinding implements a {
    public final TextView androidid;
    public final TextView appuser;
    public final LinearLayout btnAndroidid;
    public final LinearLayout btnAppuser;
    public final Button btnLogLevel;
    public final LinearLayout btnMucangid;
    public final LinearLayout btnSelectCity;
    public final Button btnSpCheck;
    public final Button btnSpClear;
    public final Button btnSubmitCity;
    public final TextView btnTestH5Protocol;
    public final LinearLayout btnViewModules;
    public final LinearLayout btnViewObjects;
    public final EditText cityCode;
    public final EditText cityLatitude;
    public final EditText cityLongitude;
    public final TextView cityName;
    public final LinearLayout container;
    public final RadioButton debugOff;
    public final RadioButton debugOn;
    public final RadioButton editAutoclickOff;
    public final RadioButton editAutoclickOn;
    public final EditText editRemoteConfig;
    public final EditText editSpFileName;
    public final EditText editSpKey;
    public final EditText editUrl;
    public final TextView emulator;
    public final EditText logLevelEdit;
    public final TextView miPushTopics;
    public final TextView mucangid;
    public final TextView pushProvider;
    public final TextView pushToken;
    public final TextView pushTokenBackup;
    public final TextView qudao;
    public final Button remoteConfigOk;
    public final TextView renyuan;
    private final ScrollView rootView;
    public final SwitchCompat swEncodeBaseParams;
    public final TextView testDevice;
    public final TextView textView;
    public final TextView textView2;
    public final Button urlOk;
    public final RadioButton webviewDebugOff;
    public final RadioButton webviewDebugOn;

    private CoreYourBinding(ScrollView scrollView, TextView textView, TextView textView2, LinearLayout linearLayout, LinearLayout linearLayout2, Button button, LinearLayout linearLayout3, LinearLayout linearLayout4, Button button2, Button button3, Button button4, TextView textView3, LinearLayout linearLayout5, LinearLayout linearLayout6, EditText editText, EditText editText2, EditText editText3, TextView textView4, LinearLayout linearLayout7, RadioButton radioButton, RadioButton radioButton2, RadioButton radioButton3, RadioButton radioButton4, EditText editText4, EditText editText5, EditText editText6, EditText editText7, TextView textView5, EditText editText8, TextView textView6, TextView textView7, TextView textView8, TextView textView9, TextView textView10, TextView textView11, Button button5, TextView textView12, SwitchCompat switchCompat, TextView textView13, TextView textView14, TextView textView15, Button button6, RadioButton radioButton5, RadioButton radioButton6) {
        this.rootView = scrollView;
        this.androidid = textView;
        this.appuser = textView2;
        this.btnAndroidid = linearLayout;
        this.btnAppuser = linearLayout2;
        this.btnLogLevel = button;
        this.btnMucangid = linearLayout3;
        this.btnSelectCity = linearLayout4;
        this.btnSpCheck = button2;
        this.btnSpClear = button3;
        this.btnSubmitCity = button4;
        this.btnTestH5Protocol = textView3;
        this.btnViewModules = linearLayout5;
        this.btnViewObjects = linearLayout6;
        this.cityCode = editText;
        this.cityLatitude = editText2;
        this.cityLongitude = editText3;
        this.cityName = textView4;
        this.container = linearLayout7;
        this.debugOff = radioButton;
        this.debugOn = radioButton2;
        this.editAutoclickOff = radioButton3;
        this.editAutoclickOn = radioButton4;
        this.editRemoteConfig = editText4;
        this.editSpFileName = editText5;
        this.editSpKey = editText6;
        this.editUrl = editText7;
        this.emulator = textView5;
        this.logLevelEdit = editText8;
        this.miPushTopics = textView6;
        this.mucangid = textView7;
        this.pushProvider = textView8;
        this.pushToken = textView9;
        this.pushTokenBackup = textView10;
        this.qudao = textView11;
        this.remoteConfigOk = button5;
        this.renyuan = textView12;
        this.swEncodeBaseParams = switchCompat;
        this.testDevice = textView13;
        this.textView = textView14;
        this.textView2 = textView15;
        this.urlOk = button6;
        this.webviewDebugOff = radioButton5;
        this.webviewDebugOn = radioButton6;
    }

    public static CoreYourBinding bind(View view) {
        int i = R.id.androidid;
        TextView textView = (TextView) view.findViewById(i);
        if (textView != null) {
            i = R.id.appuser;
            TextView textView2 = (TextView) view.findViewById(i);
            if (textView2 != null) {
                i = R.id.btn_androidid;
                LinearLayout linearLayout = (LinearLayout) view.findViewById(i);
                if (linearLayout != null) {
                    i = R.id.btn_appuser;
                    LinearLayout linearLayout2 = (LinearLayout) view.findViewById(i);
                    if (linearLayout2 != null) {
                        i = R.id.btn_log_level;
                        Button button = (Button) view.findViewById(i);
                        if (button != null) {
                            i = R.id.btn_mucangid;
                            LinearLayout linearLayout3 = (LinearLayout) view.findViewById(i);
                            if (linearLayout3 != null) {
                                i = R.id.btn_select_city;
                                LinearLayout linearLayout4 = (LinearLayout) view.findViewById(i);
                                if (linearLayout4 != null) {
                                    i = R.id.btn_sp_check;
                                    Button button2 = (Button) view.findViewById(i);
                                    if (button2 != null) {
                                        i = R.id.btn_sp_clear;
                                        Button button3 = (Button) view.findViewById(i);
                                        if (button3 != null) {
                                            i = R.id.btn_submit_city;
                                            Button button4 = (Button) view.findViewById(i);
                                            if (button4 != null) {
                                                i = R.id.btn_test_h5_protocol;
                                                TextView textView3 = (TextView) view.findViewById(i);
                                                if (textView3 != null) {
                                                    i = R.id.btn_view_modules;
                                                    LinearLayout linearLayout5 = (LinearLayout) view.findViewById(i);
                                                    if (linearLayout5 != null) {
                                                        i = R.id.btn_view_objects;
                                                        LinearLayout linearLayout6 = (LinearLayout) view.findViewById(i);
                                                        if (linearLayout6 != null) {
                                                            i = R.id.city_code;
                                                            EditText editText = (EditText) view.findViewById(i);
                                                            if (editText != null) {
                                                                i = R.id.city_latitude;
                                                                EditText editText2 = (EditText) view.findViewById(i);
                                                                if (editText2 != null) {
                                                                    i = R.id.city_longitude;
                                                                    EditText editText3 = (EditText) view.findViewById(i);
                                                                    if (editText3 != null) {
                                                                        i = R.id.city_name;
                                                                        TextView textView4 = (TextView) view.findViewById(i);
                                                                        if (textView4 != null) {
                                                                            i = R.id.container;
                                                                            LinearLayout linearLayout7 = (LinearLayout) view.findViewById(i);
                                                                            if (linearLayout7 != null) {
                                                                                i = R.id.debug_off;
                                                                                RadioButton radioButton = (RadioButton) view.findViewById(i);
                                                                                if (radioButton != null) {
                                                                                    i = R.id.debug_on;
                                                                                    RadioButton radioButton2 = (RadioButton) view.findViewById(i);
                                                                                    if (radioButton2 != null) {
                                                                                        i = R.id.edit_autoclick_off;
                                                                                        RadioButton radioButton3 = (RadioButton) view.findViewById(i);
                                                                                        if (radioButton3 != null) {
                                                                                            i = R.id.edit_autoclick_on;
                                                                                            RadioButton radioButton4 = (RadioButton) view.findViewById(i);
                                                                                            if (radioButton4 != null) {
                                                                                                i = R.id.edit_remote_config;
                                                                                                EditText editText4 = (EditText) view.findViewById(i);
                                                                                                if (editText4 != null) {
                                                                                                    i = R.id.edit_sp_file_name;
                                                                                                    EditText editText5 = (EditText) view.findViewById(i);
                                                                                                    if (editText5 != null) {
                                                                                                        i = R.id.edit_sp_key;
                                                                                                        EditText editText6 = (EditText) view.findViewById(i);
                                                                                                        if (editText6 != null) {
                                                                                                            i = R.id.edit_url;
                                                                                                            EditText editText7 = (EditText) view.findViewById(i);
                                                                                                            if (editText7 != null) {
                                                                                                                i = R.id.emulator;
                                                                                                                TextView textView5 = (TextView) view.findViewById(i);
                                                                                                                if (textView5 != null) {
                                                                                                                    i = R.id.log_level_edit;
                                                                                                                    EditText editText8 = (EditText) view.findViewById(i);
                                                                                                                    if (editText8 != null) {
                                                                                                                        i = R.id.mi_push_topics;
                                                                                                                        TextView textView6 = (TextView) view.findViewById(i);
                                                                                                                        if (textView6 != null) {
                                                                                                                            i = R.id.mucangid;
                                                                                                                            TextView textView7 = (TextView) view.findViewById(i);
                                                                                                                            if (textView7 != null) {
                                                                                                                                i = R.id.push_provider;
                                                                                                                                TextView textView8 = (TextView) view.findViewById(i);
                                                                                                                                if (textView8 != null) {
                                                                                                                                    i = R.id.push_token;
                                                                                                                                    TextView textView9 = (TextView) view.findViewById(i);
                                                                                                                                    if (textView9 != null) {
                                                                                                                                        i = R.id.push_token_backup;
                                                                                                                                        TextView textView10 = (TextView) view.findViewById(i);
                                                                                                                                        if (textView10 != null) {
                                                                                                                                            i = R.id.qudao;
                                                                                                                                            TextView textView11 = (TextView) view.findViewById(i);
                                                                                                                                            if (textView11 != null) {
                                                                                                                                                i = R.id.remote_config_ok;
                                                                                                                                                Button button5 = (Button) view.findViewById(i);
                                                                                                                                                if (button5 != null) {
                                                                                                                                                    i = R.id.renyuan;
                                                                                                                                                    TextView textView12 = (TextView) view.findViewById(i);
                                                                                                                                                    if (textView12 != null) {
                                                                                                                                                        i = R.id.sw_encode_base_params;
                                                                                                                                                        SwitchCompat switchCompat = (SwitchCompat) view.findViewById(i);
                                                                                                                                                        if (switchCompat != null) {
                                                                                                                                                            i = R.id.test_device;
                                                                                                                                                            TextView textView13 = (TextView) view.findViewById(i);
                                                                                                                                                            if (textView13 != null) {
                                                                                                                                                                i = R.id.textView;
                                                                                                                                                                TextView textView14 = (TextView) view.findViewById(i);
                                                                                                                                                                if (textView14 != null) {
                                                                                                                                                                    i = R.id.textView2;
                                                                                                                                                                    TextView textView15 = (TextView) view.findViewById(i);
                                                                                                                                                                    if (textView15 != null) {
                                                                                                                                                                        i = R.id.url_ok;
                                                                                                                                                                        Button button6 = (Button) view.findViewById(i);
                                                                                                                                                                        if (button6 != null) {
                                                                                                                                                                            i = R.id.webview_debug_off;
                                                                                                                                                                            RadioButton radioButton5 = (RadioButton) view.findViewById(i);
                                                                                                                                                                            if (radioButton5 != null) {
                                                                                                                                                                                i = R.id.webview_debug_on;
                                                                                                                                                                                RadioButton radioButton6 = (RadioButton) view.findViewById(i);
                                                                                                                                                                                if (radioButton6 != null) {
                                                                                                                                                                                    return new CoreYourBinding((ScrollView) view, textView, textView2, linearLayout, linearLayout2, button, linearLayout3, linearLayout4, button2, button3, button4, textView3, linearLayout5, linearLayout6, editText, editText2, editText3, textView4, linearLayout7, radioButton, radioButton2, radioButton3, radioButton4, editText4, editText5, editText6, editText7, textView5, editText8, textView6, textView7, textView8, textView9, textView10, textView11, button5, textView12, switchCompat, textView13, textView14, textView15, button6, radioButton5, radioButton6);
                                                                                                                                                                                }
                                                                                                                                                                            }
                                                                                                                                                                        }
                                                                                                                                                                    }
                                                                                                                                                                }
                                                                                                                                                            }
                                                                                                                                                        }
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                }
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    public static CoreYourBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static CoreYourBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.core__your, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    @Override // androidx.viewbinding.a
    public ScrollView getRoot() {
        return this.rootView;
    }
}
